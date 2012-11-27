require 'test_helper'

class DnatestsControllerTest < ActionController::TestCase
  setup do
    @dnatest = dnatests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dnatests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dnatest" do
    assert_difference('Dnatest.count') do
      post :create, :dnatest => { :date => @dnatest.date, :description => @dnatest.description, :name => @dnatest.name }
    end

    assert_redirected_to dnatest_path(assigns(:dnatest))
  end

  test "should show dnatest" do
    get :show, :id => @dnatest
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dnatest
    assert_response :success
  end

  test "should update dnatest" do
    put :update, :id => @dnatest, :dnatest => { :date => @dnatest.date, :description => @dnatest.description, :name => @dnatest.name }
    assert_redirected_to dnatest_path(assigns(:dnatest))
  end

  test "should destroy dnatest" do
    assert_difference('Dnatest.count', -1) do
      delete :destroy, :id => @dnatest
    end

    assert_redirected_to dnatests_path
  end
end
