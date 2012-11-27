class Tip < ActiveRecord::Base
  belongs_to :advice
  attr_accessible :description, :name

  validates :description,  :presence => true
  validates :name,  :presence => true

end
