require 'test_helper'

class ElistsControllerTest < ActionController::TestCase
  setup do
    @elist = elists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:elists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create elist" do
    assert_difference('Elist.count') do
      post :create, elist: { city: @elist.city, email: @elist.email, name: @elist.name }
    end

    assert_redirected_to elist_path(assigns(:elist))
  end

  test "should show elist" do
    get :show, id: @elist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @elist
    assert_response :success
  end

  test "should update elist" do
    patch :update, id: @elist, elist: { city: @elist.city, email: @elist.email, name: @elist.name }
    assert_redirected_to elist_path(assigns(:elist))
  end

  test "should destroy elist" do
    assert_difference('Elist.count', -1) do
      delete :destroy, id: @elist
    end

    assert_redirected_to elists_path
  end
end
