class AddAttributesToBrackets < ActiveRecord::Migration
  def change
    add_column :brackets, :maps, :string
    add_column :brackets, :rounds, :string
    add_column :brackets, :team_size, :integer
  end
end
