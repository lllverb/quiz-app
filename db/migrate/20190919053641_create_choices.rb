class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.string     :choice, null: false
      t.references :quiz,   null: false
      t.timestamps
    end
  end
end
