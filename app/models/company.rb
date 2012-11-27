class Company < ActiveRecord::Base
  belongs_to :site
  attr_accessible :business, :name, :revenue
end
