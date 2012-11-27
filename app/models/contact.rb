class Contact < ActiveRecord::Base
  belongs_to :site
  attr_accessible :email, :mobile, :name, :phone
end
