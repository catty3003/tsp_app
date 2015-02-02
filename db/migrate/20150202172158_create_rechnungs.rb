class CreateRechnungs < ActiveRecord::Migration
  def change
    create_table :rechnungs do |t|
      t.decimal :kva
      t.decimal :service
      t.decimal :schilder
      t.decimal :sonstiges
      t.decimal :gesamt
      t.decimal :anzahlung
      t.decimal :rest
      t.boolean :bezahlstatus
      t.string :antragsstatus
      t.boolean :versand
      t.integer :anmdeldung_id

      t.timestamps
    end
  end
end
