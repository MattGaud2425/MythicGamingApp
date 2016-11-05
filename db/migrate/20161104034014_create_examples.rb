class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :hello
      t.string :world

      t.timestamps null: false
    end
  end
end
