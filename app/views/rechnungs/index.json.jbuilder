json.array!(@rechnungs) do |rechnung|
  json.extract! rechnung, :id, :kva, :service, :schilder, :sonstiges, :gesamt, :anzahlung, :rest, :bezahlstatus, :antragsstatus, :versand, :anmdeldung_id
  json.url rechnung_url(rechnung, format: :json)
end
