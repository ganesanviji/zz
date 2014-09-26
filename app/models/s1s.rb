class S1s < ActiveRecord::Base
	has_many :sampleforms, :dependent => :delete_all
end
