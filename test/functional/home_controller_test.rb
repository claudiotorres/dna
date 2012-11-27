require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get validate" do
    get :validate
    assert_response :success
  end

end
