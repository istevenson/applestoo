require 'test_helper'

class PointTotalsControllerTest < ActionController::TestCase
  setup do
    @point_total = point_totals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:point_totals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create point_total" do
    assert_difference('PointTotal.count') do
      post :create, point_total: {  }
    end

    assert_redirected_to point_total_path(assigns(:point_total))
  end

  test "should show point_total" do
    get :show, id: @point_total
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @point_total
    assert_response :success
  end

  test "should update point_total" do
    patch :update, id: @point_total, point_total: {  }
    assert_redirected_to point_total_path(assigns(:point_total))
  end

  test "should destroy point_total" do
    assert_difference('PointTotal.count', -1) do
      delete :destroy, id: @point_total
    end

    assert_redirected_to point_totals_path
  end
end
