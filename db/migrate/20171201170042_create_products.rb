class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.decimal :price, :precision => 8, :scale => 2
      t.string :description
      t.string :players
      t.string :playtime
      t.string :publisher

      t.timestamps
    end
  end
end
