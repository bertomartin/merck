class RemoveSendTypeFromMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :send_type
  end
end
