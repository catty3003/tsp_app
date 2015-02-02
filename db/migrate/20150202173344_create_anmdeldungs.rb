class CreateAnmdeldungs < ActiveRecord::Migration
  def change
    create_table :anmdeldungs do |t|
      t.string :identnummer
      t.string :amtliches_kennzeichen
      t.string :neues_kennzeichen
      t.boolean :fp
      t.string :fz_brief_nr
      t.string :saison_von
      t.string :saison_bis
      t.string :evb_nr
      t.string :kva_notiz
      t.string :tsp_notiz
      t.boolean :versand_art
      t.integer :kunde_id

      t.timestamps
    end
  end
end
