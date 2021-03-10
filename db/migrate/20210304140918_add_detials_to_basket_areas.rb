class AddDetialsToBasketAreas < ActiveRecord::Migration[6.0]
  def change
    add_column :basket_areas, :street_address, :text,  null: false
    add_column :basket_areas, :time, :string,          null: false
  end
end
