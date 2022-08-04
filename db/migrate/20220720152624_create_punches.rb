class CreatePunches < ActiveRecord::Migration[7.0]
  def change
    create_table :punches do |t|
      t.text :content
      t.belongs_to :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
