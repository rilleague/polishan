class AddGenreculmn < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :genre_id, :integer, null: false
  end
end
