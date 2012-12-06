class Dnatest < ActiveRecord::Base
  belongs_to :site, :dependent => :destroy
  attr_accessible :date, :description, :name

  # validates :date,  :presence => true

  # Company information associated to the site.
  has_many :answers
  has_one :dnagrade

end
