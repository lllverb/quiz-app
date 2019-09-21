class CreateMistakes < ActiveRecord::Migration[5.2]
  def change
    create_table :mistakes do |t|
      t.references :user,  null: false, foreign_key: true
      t.references :quiz,  null: false, foreign_key: true
      
      t.timestamps

      t.index [:user_id, :quiz_id], unique: true
    end
  end
end
