require 'test_helper'

class AnmdeldungsControllerTest < ActionController::TestCase
  setup do
    @anmdeldung = anmdeldungs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anmdeldungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anmdeldung" do
    assert_difference('Anmdeldung.count') do
      post :create, anmdeldung: { amtliches_kennzeichen: @anmdeldung.amtliches_kennzeichen, evb_nr: @anmdeldung.evb_nr, fp: @anmdeldung.fp, fz_brief_nr: @anmdeldung.fz_brief_nr, identnummer: @anmdeldung.identnummer, kunde_id: @anmdeldung.kunde_id, kva_notiz: @anmdeldung.kva_notiz, neues_kennzeichen: @anmdeldung.neues_kennzeichen, saison_bis: @anmdeldung.saison_bis, saison_von: @anmdeldung.saison_von, tsp_notiz: @anmdeldung.tsp_notiz, versand_art: @anmdeldung.versand_art }
    end

    assert_redirected_to anmdeldung_path(assigns(:anmdeldung))
  end

  test "should show anmdeldung" do
    get :show, id: @anmdeldung
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anmdeldung
    assert_response :success
  end

  test "should update anmdeldung" do
    patch :update, id: @anmdeldung, anmdeldung: { amtliches_kennzeichen: @anmdeldung.amtliches_kennzeichen, evb_nr: @anmdeldung.evb_nr, fp: @anmdeldung.fp, fz_brief_nr: @anmdeldung.fz_brief_nr, identnummer: @anmdeldung.identnummer, kunde_id: @anmdeldung.kunde_id, kva_notiz: @anmdeldung.kva_notiz, neues_kennzeichen: @anmdeldung.neues_kennzeichen, saison_bis: @anmdeldung.saison_bis, saison_von: @anmdeldung.saison_von, tsp_notiz: @anmdeldung.tsp_notiz, versand_art: @anmdeldung.versand_art }
    assert_redirected_to anmdeldung_path(assigns(:anmdeldung))
  end

  test "should destroy anmdeldung" do
    assert_difference('Anmdeldung.count', -1) do
      delete :destroy, id: @anmdeldung
    end

    assert_redirected_to anmdeldungs_path
  end
end
