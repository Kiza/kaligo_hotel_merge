require 'net/http'
require 'json'

class BaseParser
  attr_accessor :name, :uri, :expire_sec, :cacher

  def initialize(name, url, expire_sec, cacher=nil)
    self.name = name
    self.uri = URI.parse(url)
    self.expire_sec = expire_sec
    self.cacher = cacher
  end

  def get_data(checkin, checkout, destination, guests)
    Rails.logger.debug("Get data with: #{self.class}")
    data = get_raw_data(checkin, checkout, destination, guests)

    if data.nil?
      return {}
    end

    data = JSON.parse(data)
    return data
  end


  def get_raw_data(checkin, checkout, destination, guests)
    cache_key = "#{self.name}-#{checkin}-#{checkout}-#{destination}-#{guests}".downcase
    data = self.cacher.lookup(cache_key, self.expire_sec)
    if data.size > 0
      Rails.logger.debug("Read from cache.")
      return data[0].value
    end

    data = load_data(checkin, checkout, destination, guests)
    if data
      Rails.logger.debug("Read from supplier's api.")
      self.cacher.add(cache_key, data)
      return data
    else
      return nil
    end
  end

  def load_data(checkin, checkout, destination, guests)
    http = Net::HTTP.new(self.uri.host, self.uri.port)

    http.use_ssl = true if self.uri.scheme.downcase == 'https'
    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request)

    if response.code == '200'
      return response.body
    else
      Rails.logger.error("API call failed: #{self.uri.to_s}. Response code: #{response.code}")
      return nil
    end
  end
end
