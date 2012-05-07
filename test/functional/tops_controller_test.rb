require 'test_helper'

class TopsControllerTest < ActionController::TestCase
  setup do
    @top = tops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create top" do
    assert_difference('Top.count') do
      post :create, top: { break_time: @top.break_time, day: @top.day, end: @top.end, issues: @top.issues, month: @top.month, start: @top.start, week: @top.week, work_time: @top.work_time, year: @top.year }
    end

    assert_redirected_to top_path(assigns(:top))
  end

  test "should show top" do
    get :show, id: @top
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @top
    assert_response :success
  end

  test "should update top" do
    put :update, id: @top, top: { break_time: @top.break_time, day: @top.day, end: @top.end, issues: @top.issues, month: @top.month, start: @top.start, week: @top.week, work_time: @top.work_time, year: @top.year }
    assert_redirected_to top_path(assigns(:top))
  end

  test "should destroy top" do
    assert_difference('Top.count', -1) do
      delete :destroy, id: @top
    end

    assert_redirected_to tops_path
  end
end
