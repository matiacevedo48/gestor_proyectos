class RemoveStringFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :string, :string
  end
end
