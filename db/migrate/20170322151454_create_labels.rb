class CreateLabels < ActiveRecord::Migration[5.0]
  def change
    create_table :labels do |t|
      t.string :name, null: false
      t.integer :colour, null: false

      t.timestamps
    end
  end
end
