class CreateBasketAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :basket_areas do |t|
      t.string     :coat_name, null: false
      t.text       :text
      t.text       :url
      t.integer    :area_id,   null: false
      t.integer    :price,     null: false
      t.integer    :time_id,   null: false
      t.references :user,      foreign_key: true
      t.timestamps
    end
  end
end
