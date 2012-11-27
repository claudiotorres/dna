class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :name
      t.text :description
      t.integer :version
      t.datetime :date
      t.references :site

      t.timestamps
    end
    add_index :reports, :site_id
  end
end
