class CreateDnatests < ActiveRecord::Migration
  def change
    create_table :dnatests do |t|
      t.string :name
      t.string :description
      t.datetime :date
      t.references :site

      t.timestamps
    end
    add_index :dnatests, :site_id
  end
end
