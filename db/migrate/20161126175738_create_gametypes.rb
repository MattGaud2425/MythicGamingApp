class CreateGametypes < ActiveRecord::Migration
  def change
    create_table :gametypes do |t|
      t.references :game, index: true, foreign_key: true
      t.references :map, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
