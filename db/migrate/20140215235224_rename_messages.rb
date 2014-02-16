class RenameMessages < ActiveRecord::Migration
  def change
    rename_table :mesages, :messages
  end
end
