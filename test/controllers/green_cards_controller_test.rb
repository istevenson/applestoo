require 'test_helper'

class GreenCardsControllerTest < ActionController::TestCase
  setup do
    @green_card = green_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:green_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create green_card" do
    assert_difference('GreenCard.count') do
      post :create, green_card: {  }
    end

    assert_redirected_to green_card_path(assigns(:green_card))
  end

  test "should show green_card" do
    get :show, id: @green_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @green_card
    assert_response :success
  end

  test "should update green_card" do
    patch :update, id: @green_card, green_card: {  }
    assert_redirected_to green_card_path(assigns(:green_card))
  end

  test "should destroy green_card" do
    assert_difference('GreenCard.count', -1) do
      delete :destroy, id: @green_card
    end

    assert_redirected_to green_cards_path
  end
end
