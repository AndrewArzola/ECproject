class AddNotesToRoughs < ActiveRecord::Migration[7.0]
  def change
    add_column :roughs, :notes, :string
  end
end
