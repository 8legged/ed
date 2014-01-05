class RemoveLastNameFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :last_name, :string
  end
end
