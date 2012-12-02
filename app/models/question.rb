class Question < ActiveRecord::Base
  belongs_to :evaluation
  attr_accessible :description, :name, :order

  validates :order, :description, :name, :presence => true
  validates :description, :name, :uniqueness => true
  validates :order, :numericality => { :only_integer => true }

  # Each question shows many option.
  has_many :options

end
