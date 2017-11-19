class AddFirstAndLastNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_column :users, :last_Name, :string
  end
end
