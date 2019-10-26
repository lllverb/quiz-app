class AddColumnToModalimage < ActiveRecord::Migration[5.2]
  def change
    add_column :modalimages, :correct, :integer
  end
end
