class AddSlugToResources < ActiveRecord::Migration
  def change
    add_column :resources, :slug, :string, unique: true, index: true
  end
end
