require 'test_helper'

class CacheRecordTest < ActiveSupport::TestCase
  test "save cache record" do
    key = SecureRandom.hex
    value = SecureRandom.hex

    supplier = CacheRecord.new(key:name, value:value)
    assert supplier.save

  end


  test "save duplicate data" do
    key = SecureRandom.hex
    value = SecureRandom.hex

    supplier = CacheRecord.new(key:name, value:value)
    supplier.save

    supplier = CacheRecord.new(key:name, value:value)
    assert supplier.save
  end

end
