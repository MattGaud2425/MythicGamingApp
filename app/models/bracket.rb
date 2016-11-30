class Bracket < ActiveRecord::Base
	belongs_to :game
	
	has_many :maps
	has_many :gametypes
end
