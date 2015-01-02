class AddItemIdToFilestores < ActiveRecord::Migration
  def change
    add_column :filestores, :item_id, :integer
  end
end
