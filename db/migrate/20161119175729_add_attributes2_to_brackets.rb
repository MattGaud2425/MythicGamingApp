class AddAttributes2ToBrackets < ActiveRecord::Migration
  def change
    add_column :brackets, :title, :string
  end
end
