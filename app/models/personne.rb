class Personne < ActiveRecord::Base
	validates_presence_of :nom
	validates_presence_of :prenom

	has_and_belongs_to_many :programmes
	belongs_to :type_personne
end
