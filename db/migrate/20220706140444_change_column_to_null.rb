class ChangeColumnToNull < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :age_id, :integer, null: true
    change_column :posts, :bodypart_id, :integer, null: true
    change_column :posts, :genre_id, :integer, null: true
  end
end
