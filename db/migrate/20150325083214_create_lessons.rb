class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.attachment :document
      t.string :video_url

      t.timestamps null: false
    end
  end
end
