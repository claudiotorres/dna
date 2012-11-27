class Dnagrade < ActiveRecord::Base
  belongs_to :dnatest
  attr_accessible :advertise, :content, :date, :general, :mailing, :monitoring, :research, :social, :viral

end
