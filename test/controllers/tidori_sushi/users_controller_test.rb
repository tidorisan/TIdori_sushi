require 'test_helper'

class TidoriSushi::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get tidori_sushi_users_show_url
    assert_response :success
  end

end
