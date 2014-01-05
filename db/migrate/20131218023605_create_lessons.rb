class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :category
      t.string :title
      t.text :description
      t.integer :duration
      t.integer :views
      t.integer :flips

      t.timestamps
    end
  end
end
