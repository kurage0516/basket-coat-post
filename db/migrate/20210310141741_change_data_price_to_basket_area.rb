class ChangeDataPriceToBasketArea < ActiveRecord::Migration[6.0]
  def change
    change_column :basket_areas, :price, :string,    null: false
  end
end
