class CreateModalimages < ActiveRecord::Migration[5.2]
  def change
    create_table :modalimages do |t|
      t.string :image, null: false
      t.timestamps
    end
  end
end
