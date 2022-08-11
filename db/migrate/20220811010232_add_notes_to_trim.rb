class AddNotesToTrim < ActiveRecord::Migration[7.0]
  def change
    add_column :trims, :notes, :string
  end
end
