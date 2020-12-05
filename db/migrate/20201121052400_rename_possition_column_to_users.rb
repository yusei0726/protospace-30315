class RenamePossitionColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :possition, :position
  end
end
