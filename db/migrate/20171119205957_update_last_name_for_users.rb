class UpdateLastNameForUsers < ActiveRecord::Migration
  def change
    rename_column :users, :last_Name, :last_name
  end
end
