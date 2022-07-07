class FileName < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :age_id, :integer, null: false
    add_column :posts, :bodypart_id, :integer, null: false
    add_column :posts, :skin_id, :integer
    add_column :posts, :freeword_id, :integer
  end
end
