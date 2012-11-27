class Plan < ActiveRecord::Base
  belongs_to :site
  attr_accessible :description, :name

  validates :description,  :presence => true
  validates :name,  :presence => true

  # The Plan associated features.
  has_many :features

end
