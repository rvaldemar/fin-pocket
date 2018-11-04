class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :budget, foreign_key: true
      t.decimal :value

      t.timestamps
    end
  end
end
