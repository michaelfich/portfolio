class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.string :url
      t.datetime :posted_at

      t.timestamps null: false
    end
  end
end
