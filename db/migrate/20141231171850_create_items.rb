class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_entry
      t.integer :list_id
      t.datetime :due_date
      t.timestamps
    end
  end
end
