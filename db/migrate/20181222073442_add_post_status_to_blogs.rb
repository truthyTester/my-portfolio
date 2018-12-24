class AddPostStatusToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :status, :integer, default: 0 # first param is table, columns, column type and default value for that column
  end
end
