class AddProgrammeIdToEnregistrement < ActiveRecord::Migration
  def change
 	add_column :enregistrements, :programme_id, :integer
  end
end
