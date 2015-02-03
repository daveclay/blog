class AddPasswordToPerson < ActiveRecord::Migration
  def change
    add_column :people, :password, :string
    add_column :people, :password_salt, :string
  end
end
