class AddImageColumnToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :image, :attachment
  end
end
