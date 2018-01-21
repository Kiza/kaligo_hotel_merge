require 'test_helper'
require 'securerandom'

module MkBaseParser
  def load_data(checkin, checkout, destination, guests)
    return {"monkey":"patch"}.to_json
  end

end



class BaseParserTest < ActiveSupport::TestCase
  test 'get value from cache' do
    key = SecureRandom.hex
    vKey = SecureRandom.hex
    vValue = SecureRandom.hex
    value = {vKey => vValue}.to_json
 
    cr = MiniTest::Mock.new
    cr.expect(:value, value)

    cacher = MiniTest::Mock.new
    cacher.expect(:lookup, [cr], ["name-0-0-0-0", 300])
    
    parser = BaseParser.new("name", "http://a.b.c", 300, cacher)
    d = parser.get_data(0, 0, 0, 0)

    assert d[vKey] == vValue
  end

  test 'get value not from cache' do
    cacher = MiniTest::Mock.new
    cacher.expect(:lookup, [], ["name-0-0-0-0", 300])
    cacher.expect(:add, true, ["name-0-0-0-0", {"monkey":"patch"}.to_json])

    parser = BaseParser.new("name", "http://a.b.c", 300, cacher).extend(MkBaseParser)
    
    d = parser.get_data(0, 0, 0, 0)
    assert d["monkey"] = "patch" 
  end

end