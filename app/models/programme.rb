class Programme < ActiveRecord::Base
	validates_presence_of :libelle

	has_and_belongs_to_many :personnes
	belongs_to :chaine
end
