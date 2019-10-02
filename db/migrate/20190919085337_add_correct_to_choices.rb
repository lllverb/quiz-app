class AddCorrectToChoices < ActiveRecord::Migration[5.2]
  def change
    add_column :choices, :correct, :integer
  end
end
