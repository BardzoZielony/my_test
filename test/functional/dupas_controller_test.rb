require 'test_helper'

class DupasControllerTest < ActionController::TestCase
  setup do
    @dupa = dupas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dupas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dupa" do
    assert_difference('Dupa.count') do
      post :create, :dupa => @dupa.attributes
    end

    assert_redirected_to dupa_path(assigns(:dupa))
  end

  test "should show dupa" do
    get :show, :id => @dupa.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dupa.to_param
    assert_response :success
  end

  test "should update dupa" do
    put :update, :id => @dupa.to_param, :dupa => @dupa.attributes
    assert_redirected_to dupa_path(assigns(:dupa))
  end

  test "should destroy dupa" do
    assert_difference('Dupa.count', -1) do
      delete :destroy, :id => @dupa.to_param
    end

    assert_redirected_to dupas_path
  end
end
