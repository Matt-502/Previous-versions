class AddPrefectureCodeColumnToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :prefecture_code, :integer
  end
end
