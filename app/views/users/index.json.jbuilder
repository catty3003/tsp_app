json.array!(@users) do |user|
  json.extract! user, :id, :anrede, :nachname, :vorname, :admin, :geburtsdatum, :adresse, :plz, :stadt, :telefonnummer
  json.url user_url(user, format: :json)
end
