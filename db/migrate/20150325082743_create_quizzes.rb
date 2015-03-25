class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :title
      t.text :description
      t.attachment :document
      t.string :quiz_url

      t.timestamps null: false
    end
  end
end
