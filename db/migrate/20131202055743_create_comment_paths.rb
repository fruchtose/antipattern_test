class CreateCommentPaths < ActiveRecord::Migration
  def change
    create_table :comment_paths do |t|
      t.integer :ancestor_id
      t.integer :descendant_id

      t.timestamps
    end
    add_index :comment_paths, :ancestor_id
    add_index :comment_paths, :descendant_id
  end
end
