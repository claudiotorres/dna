class Option < ActiveRecord::Base
  belongs_to :question
  attr_accessible :description, :name

  validates :description,  :presence => true
  validates :name,  :presence => true

  # Each option has a set of weights (plus or minus) to be consider on strategies.
  has_many :weights

end
