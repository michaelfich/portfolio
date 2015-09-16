class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.references :user, index: true, foreign_key: true
      t.datetime :published_at

      t.timestamps null: false
    end
  end
end
