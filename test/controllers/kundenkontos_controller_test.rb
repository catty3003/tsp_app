require 'test_helper'

class KundenkontosControllerTest < ActionController::TestCase
  setup do
    @kundenkonto = kundenkontos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kundenkontos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kundenkonto" do
    assert_difference('Kundenkonto.count') do
      post :create, kundenkonto: { bic: @kundenkonto.bic, iban: @kundenkonto.iban, institut: @kundenkonto.institut, kunde_id: @kundenkonto.kunde_id }
    end

    assert_redirected_to kundenkonto_path(assigns(:kundenkonto))
  end

  test "should show kundenkonto" do
    get :show, id: @kundenkonto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kundenkonto
    assert_response :success
  end

  test "should update kundenkonto" do
    patch :update, id: @kundenkonto, kundenkonto: { bic: @kundenkonto.bic, iban: @kundenkonto.iban, institut: @kundenkonto.institut, kunde_id: @kundenkonto.kunde_id }
    assert_redirected_to kundenkonto_path(assigns(:kundenkonto))
  end

  test "should destroy kundenkonto" do
    assert_difference('Kundenkonto.count', -1) do
      delete :destroy, id: @kundenkonto
    end

    assert_redirected_to kundenkontos_path
  end
end
