class Weight < ActiveRecord::Base
  belongs_to :option
  attr_accessible :strategyid, :value

  validates :strategyid,  :presence => true
  validates :value,  :presence => true

end
