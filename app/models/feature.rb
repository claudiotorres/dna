class Feature < ActiveRecord::Base
  belongs_to :plan
  attr_accessible :description, :name
end
