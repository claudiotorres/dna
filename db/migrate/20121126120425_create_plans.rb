class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.text :description
      t.references :site

      t.timestamps
    end
    add_index :plans, :site_id
  end
end
