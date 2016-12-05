class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :name
      t.references :game, index: true, foreign_key: true
      t.references :bracket, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
