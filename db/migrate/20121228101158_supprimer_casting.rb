class SupprimerCasting < ActiveRecord::Migration
	def change
		drop_table :casting
	end	
end
