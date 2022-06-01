class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :address
      t.string :city
      t.string :zip
      t.boolean :plans
      t.boolean :cabinet

      t.timestamps
    end
  end
end
