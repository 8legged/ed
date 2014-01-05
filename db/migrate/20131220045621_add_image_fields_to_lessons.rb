class AddImageFieldsToLessons < ActiveRecord::Migration
  def up
    add_column :lessons, :picture_uid,  :string
    add_column :lessons, :picture_name, :string  # Optional - if you want urls
                                          # to end with the original filename
  end

  def down
    remove_column :lessons, :picture_uid
    remove_column :lessons, :picture_name
  end
end
