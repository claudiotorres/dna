class ChangeColumn < ActiveRecord::Migration
  def up
    change_column :answers, :questionid, :integer
    change_column :answers, :optionid, :integer
  end

  def down
    change_column :answers, :questionid, :string
    change_column :answers, :optionid, :string
  end
end
