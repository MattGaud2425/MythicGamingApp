class Map < ActiveRecord::Base
  belongs_to :game
  belongs_to :bracket
  has_many :gametypes
end
