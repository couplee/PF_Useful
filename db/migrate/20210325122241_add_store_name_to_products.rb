class AddStoreNameToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :store_name, :string
  end
end
