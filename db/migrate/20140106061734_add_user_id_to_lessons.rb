class AddUserIdToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :user_id, :integer
    add_index :lessons, :user_id
  end
end
