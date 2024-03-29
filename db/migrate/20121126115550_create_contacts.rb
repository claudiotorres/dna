class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :mobile
      t.references :site

      t.timestamps
    end
    add_index :contacts, :site_id
  end
end
