require 'test_helper'

class ChildDupasControllerTest < ActionController::TestCase
  setup do
    @child_dupa = child_dupas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:child_dupas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create child_dupa" do
    assert_difference('ChildDupa.count') do
      post :create, :child_dupa => @child_dupa.attributes
    end

    assert_redirected_to child_dupa_path(assigns(:child_dupa))
  end

  test "should show child_dupa" do
    get :show, :id => @child_dupa.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @child_dupa.to_param
    assert_response :success
  end

  test "should update child_dupa" do
    put :update, :id => @child_dupa.to_param, :child_dupa => @child_dupa.attributes
    assert_redirected_to child_dupa_path(assigns(:child_dupa))
  end

  test "should destroy child_dupa" do
    assert_difference('ChildDupa.count', -1) do
      delete :destroy, :id => @child_dupa.to_param
    end

    assert_redirected_to child_dupas_path
  end
end
