require 'singleton'

class DataCacher
  include Singleton

  def lookup(key, expire_sec, limit=1)
    time = expire_sec.seconds.ago
    data = CacheRecord.where("key = ? and created_at > ?", key, time).order("created_at DESC").limit(limit)
    return data
  end

  def add(key, value)
    cr = CacheRecord.new(key:key, value:value)
    cr.save
  end
end

