require 'test_helper'

class RandomtitlesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get randomtitles_new_url
    assert_response :success
  end

end
