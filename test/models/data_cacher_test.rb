require 'test_helper'
require 'securerandom'

class DataCacherTest < ActiveSupport::TestCase
  test 'get value from cache' do
    key = SecureRandom.hex
    value = SecureRandom.hex
    cr = CacheRecord.new(key:key, value:value)
    cr.save

    cacher = DataCacher.instance

    data = cacher.lookup(key, 300)
    assert data[0].value == value
  end


  test 'get nothing from cache' do
    key = SecureRandom.hex
    value = SecureRandom.hex
    oldtime = 500.second.ago
    cr = CacheRecord.new(key:key, value:value, created_at:oldtime)
    cr.save

    cacher = DataCacher.instance

    data = cacher.lookup(key, 100)
    assert data.size == 0
  end

  test 'add data to cache' do
    key = SecureRandom.hex
    value = SecureRandom.hex

    cacher = DataCacher.instance
    cacher.add(key, value)

    cr = CacheRecord.find_by_key(key)
    assert cr.value == value
  end

  test 'add data to cache and load it with cacher' do
    key = SecureRandom.hex
    value = SecureRandom.hex

    cacher = DataCacher.instance
    cacher.add(key, value)

    data = cacher.lookup(key, 100)
    assert data[0].value == value
  end

end
