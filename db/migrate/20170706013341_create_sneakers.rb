class CreateSneakers < ActiveRecord::Migration[5.1]
  def change
    create_table :sneakers do |t|
      t.string :brand
      t.string :price
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
