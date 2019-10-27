class CreateJudges < ActiveRecord::Migration[5.2]
  def change
    create_table :judges do |t|
      t.references :user, null: false, foreigh_key: true
      t.references :quiz, null: false, foreigh_key: true
      t.integer    :judge, null: false
      t.timestamps
    end
  end
end
