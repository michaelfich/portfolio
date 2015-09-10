class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :repo
      t.string :image_preview
      t.string :image_large
      t.boolean :featured
    end
  end
end
