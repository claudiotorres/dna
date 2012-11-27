class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
