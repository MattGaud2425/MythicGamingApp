class AddGameIdToBrackets < ActiveRecord::Migration
  def change
    add_column :brackets, :game_id, :integer
  end
end
