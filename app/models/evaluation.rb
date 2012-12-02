class Evaluation < ActiveRecord::Base
  attr_accessible :description, :name, :order

  validates :order, :description, :name, :presence => true
  validates :description, :name, :uniqueness => true
  validates :order, :numericality => { :only_integer => true }

  # Associated questions and option.
  has_many :questions
  has_many :options, :through => :questions

end
