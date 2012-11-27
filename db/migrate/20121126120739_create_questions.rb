class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.text :description
      t.references :evaluation

      t.timestamps
    end
    add_index :questions, :evaluation_id
  end
end
