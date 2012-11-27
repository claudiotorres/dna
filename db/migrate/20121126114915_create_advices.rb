class CreateAdvices < ActiveRecord::Migration
  def change
    create_table :advices do |t|
      t.string :name
      t.text :description
      t.references :report

      t.timestamps
    end
    add_index :advices, :report_id
  end
end
