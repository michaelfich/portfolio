class AddLinkDisplayToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :web_address, :string
  end
end
