require 'test_helper'

class ChildDupa2sControllerTest < ActionController::TestCase
  setup do
    @child_dupa2 = child_dupa2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:child_dupa2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create child_dupa2" do
    assert_difference('ChildDupa2.count') do
      post :create, :child_dupa2 => @child_dupa2.attributes
    end

    assert_redirected_to child_dupa2_path(assigns(:child_dupa2))
  end

  test "should show child_dupa2" do
    get :show, :id => @child_dupa2.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @child_dupa2.to_param
    assert_response :success
  end

  test "should update child_dupa2" do
    put :update, :id => @child_dupa2.to_param, :child_dupa2 => @child_dupa2.attributes
    assert_redirected_to child_dupa2_path(assigns(:child_dupa2))
  end

  test "should destroy child_dupa2" do
    assert_difference('ChildDupa2.count', -1) do
      delete :destroy, :id => @child_dupa2.to_param
    end

    assert_redirected_to child_dupa2s_path
  end
end
