require 'test_helper'

class RechnungsControllerTest < ActionController::TestCase
  setup do
    @rechnung = rechnungs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rechnungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rechnung" do
    assert_difference('Rechnung.count') do
      post :create, rechnung: { anmdeldung_id: @rechnung.anmdeldung_id, antragsstatus: @rechnung.antragsstatus, anzahlung: @rechnung.anzahlung, bezahlstatus: @rechnung.bezahlstatus, gesamt: @rechnung.gesamt, kva: @rechnung.kva, rest: @rechnung.rest, schilder: @rechnung.schilder, service: @rechnung.service, sonstiges: @rechnung.sonstiges, versand: @rechnung.versand }
    end

    assert_redirected_to rechnung_path(assigns(:rechnung))
  end

  test "should show rechnung" do
    get :show, id: @rechnung
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rechnung
    assert_response :success
  end

  test "should update rechnung" do
    patch :update, id: @rechnung, rechnung: { anmdeldung_id: @rechnung.anmdeldung_id, antragsstatus: @rechnung.antragsstatus, anzahlung: @rechnung.anzahlung, bezahlstatus: @rechnung.bezahlstatus, gesamt: @rechnung.gesamt, kva: @rechnung.kva, rest: @rechnung.rest, schilder: @rechnung.schilder, service: @rechnung.service, sonstiges: @rechnung.sonstiges, versand: @rechnung.versand }
    assert_redirected_to rechnung_path(assigns(:rechnung))
  end

  test "should destroy rechnung" do
    assert_difference('Rechnung.count', -1) do
      delete :destroy, id: @rechnung
    end

    assert_redirected_to rechnungs_path
  end
end
