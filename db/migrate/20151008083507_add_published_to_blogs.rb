class AddPublishedToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :published, :boolean, default: false
  end
end
