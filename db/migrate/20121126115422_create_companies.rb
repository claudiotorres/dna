class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :business
      t.string :revenue
      t.references :site

      t.timestamps
    end
    add_index :companies, :site_id
  end
end
