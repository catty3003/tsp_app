class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :anrede
      t.string :nachname
      t.string :vorname
      t.boolean :admin
      t.date :geburtsdatum
      t.string :adresse
      t.string :plz
      t.string :stadt
      t.string :telefonnummer

      t.timestamps
    end
  end
end
