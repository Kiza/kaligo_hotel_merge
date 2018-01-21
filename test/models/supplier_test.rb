require 'test_helper'
require 'securerandom'

class SupplierTest < ActiveSupport::TestCase
  test "not specify parser so use default parser" do
    supplier = Supplier.new(name:'name', url:'https://a.b.c')
    supplier.init_parser
    
    assert supplier.parser.class.to_s == "BaseParser"
  end

  test "cannot find parser so use default" do
    supplier = Supplier.new(name:'name', url:'https://a.b.c', api_parser: SecureRandom.hex)
    supplier.init_parser

    assert supplier.parser.class.to_s == "BaseParser"
  end

  test "use specified parser" do
    supplier = Supplier.new(name:'name', url:'https://a.b.c', api_parser: "supplier_1_parser.rb")
    supplier.init_parser

    assert supplier.parser.class.to_s == "Supplier1Parser"
  end

  test "load data" do
    value = {SecureRandom.hex => SecureRandom.hex}

    parser = MiniTest::Mock.new
    parser.expect(:get_data, value, [0, 0, 0, 0])

    supplier = Supplier.new(name:'name', url:'https://a.b.c')
    supplier.parser = parser

    d = supplier.load_data(0, 0, 0, 0)

    assert d == value
  end

  test "save supplier" do
    name = SecureRandom.hex
    url = "https://#{SecureRandom.hex}.#{SecureRandom.hex}"
    supplier = Supplier.new(name:name, url:url)
    assert supplier.save
  end

  test "cannot save supplier with existing name" do
    name = SecureRandom.hex   
    url = "https://#{SecureRandom.hex}.#{SecureRandom.hex}"
    supplier = Supplier.new(name:name, url:url)
    supplier.save

    url = "https://#{SecureRandom.hex}.#{SecureRandom.hex}"
    supplier = Supplier.new(name:name, url:url)
    failed = false
    begin
      supplier.save
    rescue Exception => e
      failed = true
    end
    assert failed
  end

  test "cannot save supplier with existing url" do
    name = SecureRandom.hex
    url = "https://#{SecureRandom.hex}.#{SecureRandom.hex}"
    supplier = Supplier.new(name:name, url:url)
    supplier.save

    name = SecureRandom.hex
    supplier = Supplier.new(name:name, url:url)
    failed = false
    begin
      supplier.save
    rescue Exception => e
      failed = true
    end
    assert failed
  end
end
