require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  setup do
    @user = users(:one).name
  end

  test "name should match" do
    assert_equal 'test', @user
  end

  test "should get index" do
    get :index
    assert_response :success
  end


  test "should destroy user" do
    assert_difference 'User.count', -1 do
      delete :destroy, id: @user
    end
  end
end
