class Supplier < ApplicationRecord
  attr_accessor :parser

  def init_parser()
    data_cacher = DataCacher.instance
    logger.debug("DataCacher: #{data_cacher.object_id}")

    parser_dir = nil
    parser_dir = Rails.root.join('app','api_parsers', self.api_parser) if self.api_parser

    if self.api_parser and not parser_dir.nil? and File.exist?(parser_dir)
      logger.debug("Specific AIP parser found for #{self.name}: #{self.api_parser}")
      klass = get_parser_class(parser_dir)
      self.parser = klass.new(self.name, self.url, self.expire_sec, data_cacher)
    else
      logger.debug("Using default parser for #{self.name}.")

      self.parser = BaseParser.new(self.name, self.url, self.expire_sec, data_cacher)
    end
  end

  def load_data(checkin, checkout, destination, guests)
    data = self.parser.get_data(checkin, checkout, destination, guests)

    return data
  end

  def get_parser_class(parser_dir)
    filename = File.basename(parser_dir, File.extname(parser_dir))
    klass = filename.camelize

    require parser_dir
    return klass.constantize
  end

end
