class AddPictureToTrims < ActiveRecord::Migration[7.0]
  def change
    add_column :trims, :picture, :boolean
  end
end
