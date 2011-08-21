require 'test_helper'

class DupadupasControllerTest < ActionController::TestCase
  setup do
    @dupadupa = dupadupas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dupadupas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dupadupa" do
    assert_difference('Dupadupa.count') do
      post :create, :dupadupa => @dupadupa.attributes
    end

    assert_redirected_to dupadupa_path(assigns(:dupadupa))
  end

  test "should show dupadupa" do
    get :show, :id => @dupadupa.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dupadupa.to_param
    assert_response :success
  end

  test "should update dupadupa" do
    put :update, :id => @dupadupa.to_param, :dupadupa => @dupadupa.attributes
    assert_redirected_to dupadupa_path(assigns(:dupadupa))
  end

  test "should destroy dupadupa" do
    assert_difference('Dupadupa.count', -1) do
      delete :destroy, :id => @dupadupa.to_param
    end

    assert_redirected_to dupadupas_path
  end
end
