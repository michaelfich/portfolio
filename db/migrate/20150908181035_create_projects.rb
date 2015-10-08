class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :repo
      t.string :image_preview,  default: 'default_preview.jpg'
      t.string :image_large,    default: 'default_large.jpg'
      t.boolean :featured
    end
  end
end
