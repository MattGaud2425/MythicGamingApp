class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :image
      t.string :title
      t.string :category
      t.boolean :active

      t.timestamps null: false
    end
  end
end
