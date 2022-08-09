class AddCompletedToRoughs < ActiveRecord::Migration[7.0]
  def change
    add_column :roughs, :completed, :integer
  end
end
