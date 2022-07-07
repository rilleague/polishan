class RemoveGenreFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :Posts, :genre, :integer
  end
end
