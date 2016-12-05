class Gametype < ActiveRecord::Base
  belongs_to :game
  belongs_to :map
  belongs_to :bracket
end
