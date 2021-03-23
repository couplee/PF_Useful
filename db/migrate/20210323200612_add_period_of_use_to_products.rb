class AddPeriodOfUseToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :period_of_use, :string
  end
end
