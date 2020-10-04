class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :prefecture
      t.string :location
      t.string :hobby
      t.string :structure
      t.string :title
      t.text :description
      t.text :details
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
