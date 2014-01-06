class AddUserIdToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :user_id, :integer
  end
end
