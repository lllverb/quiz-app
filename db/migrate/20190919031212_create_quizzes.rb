class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :quiz, null: false
      t.string :answer, null: false
      t.text   :image
      t.text   :explanation
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end
