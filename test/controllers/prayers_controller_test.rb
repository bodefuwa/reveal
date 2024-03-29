require 'test_helper'

class PrayersControllerTest < ActionController::TestCase
  setup do
    @prayer = prayers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prayers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prayer" do
    assert_difference('Prayer.count') do
      post :create, prayer: { title: @prayer.title, topic_id: @prayer.topic_id }
    end

    assert_redirected_to prayer_path(assigns(:prayer))
  end

  test "should show prayer" do
    get :show, id: @prayer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prayer
    assert_response :success
  end

  test "should update prayer" do
    patch :update, id: @prayer, prayer: { title: @prayer.title, topic_id: @prayer.topic_id }
    assert_redirected_to prayer_path(assigns(:prayer))
  end

  test "should destroy prayer" do
    assert_difference('Prayer.count', -1) do
      delete :destroy, id: @prayer
    end

    assert_redirected_to prayers_path
  end
end
