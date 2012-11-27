class CreateDnagrades < ActiveRecord::Migration
  def change
    create_table :dnagrades do |t|
      t.integer :general
      t.integer :content
      t.integer :social
      t.integer :mailing
      t.integer :viral
      t.integer :advertise
      t.integer :research
      t.integer :monitoring
      t.datetime :date
      t.references :dnatest

      t.timestamps
    end
    add_index :dnagrades, :dnatest_id
  end
end
