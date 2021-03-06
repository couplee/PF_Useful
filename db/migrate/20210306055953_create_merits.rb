class CreateMerits < ActiveRecord::Migration[5.2]
  def change
    create_table :merits do |t|
      t.integer :product_id
      t.string :advantage

      t.timestamps
    end
  end
end
