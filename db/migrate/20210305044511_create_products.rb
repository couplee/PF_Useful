class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.text :seller
      t.integer :cost
      t.date :since_when

      t.timestamps
    end
  end
end
