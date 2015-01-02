class CreateFilestores < ActiveRecord::Migration
  def change
    create_table :filestores do |t|
      t.string :name
      t.string :attachment

      t.timestamps
    end
  end
end
