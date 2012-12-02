class Weight < ActiveRecord::Base
  belongs_to :option
  attr_accessible :strategyid, :value

  validates :strategyid, :value, :presence => true
  validates :value, :numericality => { :only_integer => true }
  validates :value, :inclusion => { :in => 1..10 }

end
