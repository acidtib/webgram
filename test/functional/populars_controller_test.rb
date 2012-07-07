require 'test_helper'

class PopularsControllerTest < ActionController::TestCase
  setup do
    @popular = populars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:populars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create popular" do
    assert_difference('Popular.count') do
      post :create, popular: @popular.attributes
    end

    assert_redirected_to popular_path(assigns(:popular))
  end

  test "should show popular" do
    get :show, id: @popular.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @popular.to_param
    assert_response :success
  end

  test "should update popular" do
    put :update, id: @popular.to_param, popular: @popular.attributes
    assert_redirected_to popular_path(assigns(:popular))
  end

  test "should destroy popular" do
    assert_difference('Popular.count', -1) do
      delete :destroy, id: @popular.to_param
    end

    assert_redirected_to populars_path
  end
end
