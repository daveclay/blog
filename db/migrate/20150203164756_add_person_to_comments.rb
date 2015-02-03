class AddPersonToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :person, index: true
    add_foreign_key :comments, :people
  end
end
