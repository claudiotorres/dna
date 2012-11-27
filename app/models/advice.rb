class Advice < ActiveRecord::Base
  belongs_to :report
  attr_accessible :description, :name

  validates :description,  :presence => true
  validates :name,  :presence => true

  # Company information associated to the site.
  has_many :tips

end
