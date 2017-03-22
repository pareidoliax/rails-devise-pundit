class CreateLabelables < ActiveRecord::Migration[5.0]
  def change
    create_table :labelables do |t|
      t.references :user, foreign_key: true
      t.references :label, foreign_key: true

      t.timestamps
    end
  end
end
