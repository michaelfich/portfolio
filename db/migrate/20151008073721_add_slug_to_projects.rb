class AddSlugToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :slug, :string, index: true
  end
end
