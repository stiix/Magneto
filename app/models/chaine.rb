class Chaine < ActiveRecord::Base
	validates_presence_of :nom
	validates_presence_of :numero

	has_many :programmes
end
