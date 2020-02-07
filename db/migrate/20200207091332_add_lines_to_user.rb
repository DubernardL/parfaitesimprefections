class AddLinesToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :adresse, :string
    add_column :users, :ville, :string
    add_column :users, :code_postal, :string
    add_column :users, :prenom, :string
    add_column :users, :nom, :string
  end
end
