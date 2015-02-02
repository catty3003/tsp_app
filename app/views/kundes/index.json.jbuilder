json.array!(@kundes) do |kunde|
  json.extract! kunde, :id, :gruppe, :anrede, :nachname, :vorname, :geburtsdatum, :geburtsort, :adresse, :plz, :stadt, :telefonnummer, :tsp_versicherungskunde
  json.url kunde_url(kunde, format: :json)
end
