class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.text :description
      t.string :image
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
