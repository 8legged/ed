class AddIndexToLessons < ActiveRecord::Migration
  def change
    add_index :lessons, :created_at
  end
end
