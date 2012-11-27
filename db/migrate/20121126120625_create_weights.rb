class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.string :strategyid
      t.integer :value
      t.references :option

      t.timestamps
    end
    add_index :weights, :option_id
  end
end
