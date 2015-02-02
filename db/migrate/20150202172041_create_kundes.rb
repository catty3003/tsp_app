class CreateKundes < ActiveRecord::Migration
  def change
    create_table :kundes do |t|
      t.string :gruppe
      t.string :anrede
      t.string :nachname
      t.string :vorname
      t.date :geburtsdatum
      t.string :geburtsort
      t.string :adresse
      t.string :plz
      t.string :stadt
      t.string :telefonnummer
      t.boolean :tsp_versicherungskunde

      t.timestamps
    end
  end
end
