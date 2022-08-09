class CreateRoughs < ActiveRecord::Migration[7.0]
  def change
    create_table :roughs do |t|
      t.string :content
      t.boolean :picture
      t.belongs_to :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
