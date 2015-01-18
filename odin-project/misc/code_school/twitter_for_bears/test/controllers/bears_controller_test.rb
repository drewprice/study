require 'test_helper'

class BearsControllerTest < ActionController::TestCase
  setup do
    @bear = bears(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bears)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bear" do
    assert_difference('Bear.count') do
      post :create, bear: { age: @bear.age, bio: @bear.bio, name: @bear.name }
    end

    assert_redirected_to bear_path(assigns(:bear))
  end

  test "should show bear" do
    get :show, id: @bear
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bear
    assert_response :success
  end

  test "should update bear" do
    patch :update, id: @bear, bear: { age: @bear.age, bio: @bear.bio, name: @bear.name }
    assert_redirected_to bear_path(assigns(:bear))
  end

  test "should destroy bear" do
    assert_difference('Bear.count', -1) do
      delete :destroy, id: @bear
    end

    assert_redirected_to bears_path
  end
end
