class AddSendTypeToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :send_type, :string
  end
end
