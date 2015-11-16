class AddHiddenToComments < ActiveRecord::Migration
  def change
    add_column :comments, :show, :boolean, default: true
  end
end
