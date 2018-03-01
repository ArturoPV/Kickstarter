class AddLastNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :lname, :string
    remove_column :users, :name, :string
    add_column :users, :fname, :string
  end
end
