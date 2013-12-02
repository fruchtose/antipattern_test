class CreateClosureComments < ActiveRecord::Migration
  def change
    create_table :closure_comments do |t|
      t.text :comments

      t.timestamps
    end
  end
end
