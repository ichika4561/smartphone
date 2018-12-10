require 'test_helper'

class SettionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get settions_new_url
    assert_response :success
  end

end
