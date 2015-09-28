class AddIpAddressToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :ip_address, :text
  end
end
