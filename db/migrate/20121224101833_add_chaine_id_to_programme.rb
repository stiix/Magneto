class AddChaineIdToProgramme < ActiveRecord::Migration
  def change
  	add_column :programmes, :chaine_id, :integer
  end
end
