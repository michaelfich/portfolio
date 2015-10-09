class RemoveLegacyFieldsFromProject < ActiveRecord::Migration
  def change
    remove_column :projects, :image_preview
    remove_column :projects, :image_large
  end
end
