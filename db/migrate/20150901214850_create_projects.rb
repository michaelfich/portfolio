class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url
      t.string :repo
      t.text :description
      t.string :image

      t.timestamps null: false
    end
  end
end
