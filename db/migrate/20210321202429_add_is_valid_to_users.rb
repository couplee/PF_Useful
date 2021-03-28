class AddIsValidToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_valid, :boolean, default: true, null: false                                  # 論理削除でユーザー退会1/17
  end
end
