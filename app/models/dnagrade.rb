class Dnagrade < ActiveRecord::Base
  belongs_to :dnatest, :dependent => :destroy

  attr_accessible :advertise, :content, :date, :general, :mailing, :monitoring, :research, :social, :viral

end
