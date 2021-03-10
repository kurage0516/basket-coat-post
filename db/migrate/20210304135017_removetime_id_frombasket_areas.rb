class RemovetimeIdFrombasketAreas < ActiveRecord::Migration[6.0]
  def change
    remove_column :basket_areas, :time_id, :integer
    remove_column :basket_areas, :text, :text
    remove_column :basket_areas, :area_id, :integer
  end
end
