class CreateKundenkontos < ActiveRecord::Migration
  def change
    create_table :kundenkontos do |t|
      t.string :iban
      t.string :bic
      t.string :institut
      t.integer :kunde_id

      t.timestamps
    end
  end
end
