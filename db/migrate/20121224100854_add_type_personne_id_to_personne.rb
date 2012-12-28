class AddTypePersonneIdToPersonne < ActiveRecord::Migration
  def change
  	add_column :personnes, :type_personne_id, :integer
  end
end
