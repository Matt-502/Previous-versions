class AddImageToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :image, :string
  end
end
