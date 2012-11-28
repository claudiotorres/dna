class AddOrderToEvaluation < ActiveRecord::Migration
  def change
    add_column :evaluations, :order, :integer
  end
end
