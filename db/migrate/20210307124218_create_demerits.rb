class CreateDemerits < ActiveRecord::Migration[5.2]
  def change
    create_table :demerits do |t|
      t.integer :product_id
      t.string :disadvantage

      t.timestamps
    end
  end
end
