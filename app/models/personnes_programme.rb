class PersonnesProgramme < ActiveRecord::Base
	belongs_to :personne 
	belongs_to :programme 
end
