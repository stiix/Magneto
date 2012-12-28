class CreatePersonnesProgrammes < ActiveRecord::Migration
  def change
    create_table :personnes_programmes do |t|
      t.integer :personne_id
      t.integer :programme_id

      t.timestamps
    end
  end
end
