class CreateTypePersonnes < ActiveRecord::Migration
  def change
    create_table :type_personnes do |t|
      t.string :libelle

      t.timestamps
    end
  end
end
