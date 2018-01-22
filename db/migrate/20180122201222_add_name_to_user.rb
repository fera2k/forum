class AddNameToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string, limit: 200
  end

end
