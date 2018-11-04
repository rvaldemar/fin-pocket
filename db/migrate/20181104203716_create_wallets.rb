class CreateWallets < ActiveRecord::Migration[5.2]
  def change
    create_table :wallets do |t|
      t.references :user, foreign_key: true
      t.decimal :balance

      t.timestamps
    end
  end
end
