class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :category_id, index: true
      t.integer :author_id, index: true
      t.string :title, limit: 300
      t.text :post_body

      t.timestamps
    end
  end
end
