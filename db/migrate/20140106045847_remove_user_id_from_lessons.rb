class RemoveUserIdFromLessons < ActiveRecord::Migration
  def change
    remove_column :lessons, :user_id, :integer
  end
end
