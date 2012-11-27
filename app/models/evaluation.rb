class Evaluation < ActiveRecord::Base
  attr_accessible :description, :name

  validates :description,  :presence => true
  validates :name,  :presence => true

  # Associated questions and option.
  has_many :questions
  has_many :options, :through => :questions

end
