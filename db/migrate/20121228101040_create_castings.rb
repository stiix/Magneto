class CreateCastings < ActiveRecord::Migration
  def change
    create_table :castings do |t|
      t.integer :id_personne
      t.integer :id_programme

      t.timestamps
    end
  end
end
