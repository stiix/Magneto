class CreateEnregistrements < ActiveRecord::Migration
  def change
    create_table :enregistrements do |t|
      t.integer :marge_avant
      t.integer :marge_apres

      t.timestamps
    end
  end
end
