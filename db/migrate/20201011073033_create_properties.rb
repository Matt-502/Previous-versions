class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.integer :user_id
      t.string :prefecture
      t.integer :prefecture_id
      t.string :municipality
      t.string :address
      t.string :title
      t.string :description
      t.string :details
      t.integer :price
      t.string :hobby
      t.string :layout
      t.string :location
      

      t.timestamps
    end
  end
end
