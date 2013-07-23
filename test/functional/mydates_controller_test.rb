require 'test_helper'

class MydatesControllerTest < ActionController::TestCase
  setup do
    @mydate = mydates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mydates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mydate" do
    assert_difference('Mydate.count') do
      post :create, mydate: { date: @mydate.date, entry: @mydate.entry }
    end

    assert_redirected_to mydate_path(assigns(:mydate))
  end

  test "should show mydate" do
    get :show, id: @mydate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mydate
    assert_response :success
  end

  test "should update mydate" do
    put :update, id: @mydate, mydate: { date: @mydate.date, entry: @mydate.entry }
    assert_redirected_to mydate_path(assigns(:mydate))
  end

  test "should destroy mydate" do
    assert_difference('Mydate.count', -1) do
      delete :destroy, id: @mydate
    end

    assert_redirected_to mydates_path
  end
end
