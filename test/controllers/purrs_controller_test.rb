require 'test_helper'

class PurrsControllerTest < ActionController::TestCase
  setup do
    @purr = purrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purr" do
    assert_difference('Purr.count') do
      post :create, purr: {  }
    end

    assert_redirected_to purr_path(assigns(:purr))
  end

  test "should show purr" do
    get :show, id: @purr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purr
    assert_response :success
  end

  test "should update purr" do
    patch :update, id: @purr, purr: {  }
    assert_redirected_to purr_path(assigns(:purr))
  end

  test "should destroy purr" do
    assert_difference('Purr.count', -1) do
      delete :destroy, id: @purr
    end

    assert_redirected_to purrs_path
  end
end
