class AddShortTitleToGames < ActiveRecord::Migration
  def change
  	add_column :games, :short_title, :string
  end
end
