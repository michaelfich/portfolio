class AddSlugToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :slug, :string, unique: true, index: true
  end
end
