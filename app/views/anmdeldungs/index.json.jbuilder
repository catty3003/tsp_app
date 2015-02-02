json.array!(@anmdeldungs) do |anmdeldung|
  json.extract! anmdeldung, :id, :identnummer, :amtliches_kennzeichen, :neues_kennzeichen, :fp, :fz_brief_nr, :saison_von, :saison_bis, :evb_nr, :kva_notiz, :tsp_notiz, :versand_art, :kunde_id
  json.url anmdeldung_url(anmdeldung, format: :json)
end
