class Question < ActiveRecord::Base
  belongs_to :evaluation
  attr_accessible :description, :name, :order

  validates :order,  :presence => true
  validates :description,  :presence => true
  validates :name,  :presence => true

  # Each question shows many option.
  has_many :options

end
