class AddNotesToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :notes, :string
  end
end
