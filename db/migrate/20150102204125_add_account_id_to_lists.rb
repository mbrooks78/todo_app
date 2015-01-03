class AddAccountIdToLists < ActiveRecord::Migration
  def change
    add_column :lists, :account_id, :integer
  end

end
