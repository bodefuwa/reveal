require 'test_helper'

class PrayerPointsControllerTest < ActionController::TestCase
  setup do
    @prayer_point = prayer_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prayer_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prayer_point" do
    assert_difference('PrayerPoint.count') do
      post :create, prayer_point: { point: @prayer_point.point, prayer_id: @prayer_point.prayer_id }
    end

    assert_redirected_to prayer_point_path(assigns(:prayer_point))
  end

  test "should show prayer_point" do
    get :show, id: @prayer_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prayer_point
    assert_response :success
  end

  test "should update prayer_point" do
    patch :update, id: @prayer_point, prayer_point: { point: @prayer_point.point, prayer_id: @prayer_point.prayer_id }
    assert_redirected_to prayer_point_path(assigns(:prayer_point))
  end

  test "should destroy prayer_point" do
    assert_difference('PrayerPoint.count', -1) do
      delete :destroy, id: @prayer_point
    end

    assert_redirected_to prayer_points_path
  end
end
