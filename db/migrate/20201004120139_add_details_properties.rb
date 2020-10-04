class AddDetailsProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :prefecture_id, :integer
  end
end
