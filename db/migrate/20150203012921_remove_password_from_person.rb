class RemovePasswordFromPerson < ActiveRecord::Migration
  def change
    remove_column :people, :password, :string
    remove_column :people, :password_salt, :string
  end
end
