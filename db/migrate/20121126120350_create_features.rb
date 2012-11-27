class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :name
      t.text :description
      t.references :plan

      t.timestamps
    end
    add_index :features, :plan_id
  end
end
