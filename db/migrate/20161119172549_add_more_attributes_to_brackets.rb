class AddMoreAttributesToBrackets < ActiveRecord::Migration
  def change
    add_column :brackets, :game_types, :string
  end
end
