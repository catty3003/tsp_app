json.array!(@kundenkontos) do |kundenkonto|
  json.extract! kundenkonto, :id, :iban, :bic, :institut, :kunde_id
  json.url kundenkonto_url(kundenkonto, format: :json)
end
