class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :name
      t.text :description
      t.references :advice

      t.timestamps
    end
    add_index :tips, :advice_id
  end
end
