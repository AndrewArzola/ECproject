class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :content
      t.boolean :picture
      t.integer :completed
      t.belongs_to :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
