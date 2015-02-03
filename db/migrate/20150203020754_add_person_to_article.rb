class AddPersonToArticle < ActiveRecord::Migration
  def change
    add_reference :articles, :person, index: true
    add_foreign_key :articles, :people
  end
end
