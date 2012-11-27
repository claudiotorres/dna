require 'test_helper'

class DnagradesControllerTest < ActionController::TestCase
  setup do
    @dnagrade = dnagrades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dnagrades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dnagrade" do
    assert_difference('Dnagrade.count') do
      post :create, :dnagrade => { :advertise => @dnagrade.advertise, :content => @dnagrade.content, :date => @dnagrade.date, :general => @dnagrade.general, :mailing => @dnagrade.mailing, :monitoring => @dnagrade.monitoring, :research => @dnagrade.research, :social => @dnagrade.social, :viral => @dnagrade.viral }
    end

    assert_redirected_to dnagrade_path(assigns(:dnagrade))
  end

  test "should show dnagrade" do
    get :show, :id => @dnagrade
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dnagrade
    assert_response :success
  end

  test "should update dnagrade" do
    put :update, :id => @dnagrade, :dnagrade => { :advertise => @dnagrade.advertise, :content => @dnagrade.content, :date => @dnagrade.date, :general => @dnagrade.general, :mailing => @dnagrade.mailing, :monitoring => @dnagrade.monitoring, :research => @dnagrade.research, :social => @dnagrade.social, :viral => @dnagrade.viral }
    assert_redirected_to dnagrade_path(assigns(:dnagrade))
  end

  test "should destroy dnagrade" do
    assert_difference('Dnagrade.count', -1) do
      delete :destroy, :id => @dnagrade
    end

    assert_redirected_to dnagrades_path
  end
end
