class RenameChoiceColumnToChoices < ActiveRecord::Migration[5.2]
  def change
    rename_column :choices, :choice, :text
  end
end
