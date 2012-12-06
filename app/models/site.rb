class Site < ActiveRecord::Base
  attr_accessible :description, :name, :url

  validates :url,  :presence => true,
            :uniqueness => true,
            :format => { :with => URI::regexp(%w(http https))},
            :length => { :minimum => 5 }

  # Company information associated to the site.
  has_one :company
  has_one :contact
  # Report and Test Data
  has_one :report
  has_one :dnatest
  # Company Plan
  has_one :plan

end
