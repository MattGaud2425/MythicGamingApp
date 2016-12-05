class AddBracketIdToGametype < ActiveRecord::Migration
  def change
    add_reference :gametypes, :bracket, index: true, foreign_key: true
  end
end
