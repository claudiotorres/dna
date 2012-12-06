class Report < ActiveRecord::Base
  belongs_to :site, :dependent => :destroy
  attr_accessible :date, :description, :name, :version

  validates :date,  :presence => true
  validates :description,  :presence => true
  validates :name,  :presence => true
  validates :version,  :presence => true

  # Company information associated to the site.
  has_many :advices
  has_many :tips, :through => :advices

end
