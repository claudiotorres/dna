class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :questionid
      t.string :optionid
      t.datetime :date
      t.references :dnatest

      t.timestamps
    end
    add_index :answers, :dnatest_id
  end
end
