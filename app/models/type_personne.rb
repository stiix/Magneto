class TypePersonne < ActiveRecord::Base
	validates_presence_of :libelle
	
	has_many :personnes
end
