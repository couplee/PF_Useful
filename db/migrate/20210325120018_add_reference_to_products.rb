class AddReferenceToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :reference, :text
  end
end
