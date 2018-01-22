class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :post_id, index: true
      t.integer :author_id, index: true
      t.text :comment_body

      t.timestamps
    end
  end
end
