class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :comment
      t.integer :count
      t.timestamps
    end
  end
end
