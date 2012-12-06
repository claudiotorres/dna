class Company < ActiveRecord::Base
  belongs_to :site, :dependent => :destroy
  attr_accessible :business, :name, :revenue
end
