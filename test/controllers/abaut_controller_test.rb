require 'test_helper'

class AbautControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get abaut_new_url
    assert_response :success
  end

end
