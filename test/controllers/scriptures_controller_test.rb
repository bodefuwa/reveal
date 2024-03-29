require 'test_helper'

class ScripturesControllerTest < ActionController::TestCase
  setup do
    @scripture = scriptures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scriptures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scripture" do
    assert_difference('Scripture.count') do
      post :create, scripture: { book: @scripture.book, chapter: @scripture.chapter, text: @scripture.text, verser: @scripture.verser }
    end

    assert_redirected_to scripture_path(assigns(:scripture))
  end

  test "should show scripture" do
    get :show, id: @scripture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scripture
    assert_response :success
  end

  test "should update scripture" do
    patch :update, id: @scripture, scripture: { book: @scripture.book, chapter: @scripture.chapter, text: @scripture.text, verser: @scripture.verser }
    assert_redirected_to scripture_path(assigns(:scripture))
  end

  test "should destroy scripture" do
    assert_difference('Scripture.count', -1) do
      delete :destroy, id: @scripture
    end

    assert_redirected_to scriptures_path
  end
end
