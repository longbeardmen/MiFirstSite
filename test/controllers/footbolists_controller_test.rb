require 'test_helper'

class FootbolistsControllerTest < ActionController::TestCase
  setup do
    @footbolist = footbolists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:footbolists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create footbolist" do
    assert_difference('Footbolist.count') do
      post :create, footbolist: { club: @footbolist.club, description: @footbolist.description, name: @footbolist.name, second_name: @footbolist.second_name }
    end

    assert_redirected_to footbolist_path(assigns(:footbolist))
  end

  test "should show footbolist" do
    get :show, id: @footbolist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @footbolist
    assert_response :success
  end

  test "should update footbolist" do
    patch :update, id: @footbolist, footbolist: { club: @footbolist.club, description: @footbolist.description, name: @footbolist.name, second_name: @footbolist.second_name }
    assert_redirected_to footbolist_path(assigns(:footbolist))
  end

  test "should destroy footbolist" do
    assert_difference('Footbolist.count', -1) do
      delete :destroy, id: @footbolist
    end

    assert_redirected_to footbolists_path
  end
end
