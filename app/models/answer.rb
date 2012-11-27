class Answer < ActiveRecord::Base
  belongs_to :dnatest
  attr_accessible :date, :optionid, :questionid

  validates :date,  :presence => true
  validates :optionid,  :presence => true
  validates :questionid,  :presence => true

  # Store the customer answer
  # has_one :question
  # has_one :option

end
