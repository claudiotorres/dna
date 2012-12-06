class Contact < ActiveRecord::Base
  belongs_to :site, :dependent => :destroy
  attr_accessible :email, :mobile, :name, :phone
end
