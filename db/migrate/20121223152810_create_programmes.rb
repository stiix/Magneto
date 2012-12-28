class CreateProgrammes < ActiveRecord::Migration
  def change
    create_table :programmes do |t|
      t.date :debut
      t.date :fin
      t.string :libelle

      t.timestamps
    end
  end
end
