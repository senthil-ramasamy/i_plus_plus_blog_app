require 'test_helper'

class TodocontentsControllerTest < ActionController::TestCase
  setup do
    @todocontent = todocontents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:todocontents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create todocontent" do
    assert_difference('Todocontent.count') do
      post :create, todocontent: { done: @todocontent.done, name: @todocontent.name }
    end

    assert_redirected_to todocontent_path(assigns(:todocontent))
  end

  test "should show todocontent" do
    get :show, id: @todocontent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @todocontent
    assert_response :success
  end

  test "should update todocontent" do
    patch :update, id: @todocontent, todocontent: { done: @todocontent.done, name: @todocontent.name }
    assert_redirected_to todocontent_path(assigns(:todocontent))
  end

  test "should destroy todocontent" do
    assert_difference('Todocontent.count', -1) do
      delete :destroy, id: @todocontent
    end

    assert_redirected_to todocontents_path
  end
end
