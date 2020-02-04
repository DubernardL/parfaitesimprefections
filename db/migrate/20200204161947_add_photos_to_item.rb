class AddPhotosToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :photo2, :string
    add_column :items, :photo3, :string
  end
end
