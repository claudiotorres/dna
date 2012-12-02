class Option < ActiveRecord::Base
  belongs_to :question
  attr_accessible :description, :name, :order

  validates :order, :description, :name, :presence => true
  validates :order, :numericality => { :only_integer => true }

  # Each option has a set of weights (plus or minus) to be consider on strategies.
  has_many :weights

end
