class CreateTrims < ActiveRecord::Migration[7.0]
  def change
    create_table :trims do |t|
      t.string :content
      t.belongs_to :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
