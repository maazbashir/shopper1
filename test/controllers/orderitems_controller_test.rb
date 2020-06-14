require 'test_helper'

class OrderitemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get orderitems_index_url
    assert_response :success
  end

end
