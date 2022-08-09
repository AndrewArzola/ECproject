class AddCompletedToTrims < ActiveRecord::Migration[7.0]
  def change
    add_column :trims, :completed, :integer
  end
end
