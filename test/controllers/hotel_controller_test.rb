require 'test_helper'


class HotelControllerTest < ActionDispatch::IntegrationTest
  test "should get list with actual API call" do
    get hotel_list_url,  params: { checkin:'20170812', checkout:'20170913', destination:'destination', 
      destination:2}

    assert_response :success
  end

  test "should get list with actual API call and supplier list" do
    get hotel_list_url,  params: { checkin:'20170812', checkout:'20170913', destination:'destination', 
      destination:2, suppliers:"supplier1,supplier2,supplier3,supplier4"}

    assert_response :success
  end


  test "should get list with actual API call and supplier list and empty return" do
    get hotel_list_url,  params: { checkin:'20170812', checkout:'20170913', destination:'destination', 
      destination:2, suppliers:"supplier4,supplier5"}

    assert_response :success
    resp = JSON.parse(response.body)
    assert resp.size == 0
  end

end
