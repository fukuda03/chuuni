require 'test_helper'

class NeswControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get nesw_new_url
    assert_response :success
  end

end
