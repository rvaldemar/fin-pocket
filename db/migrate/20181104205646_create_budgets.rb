class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.text :title
      t.references :wallet, foreign_key: true
      t.integer :time_period
      t.boolean :keep_funds
      t.decimal :value

      t.timestamps
    end
  end
end
