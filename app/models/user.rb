class User < ActiveRecord::Base
	validates :first, :presence => true
	validates :email, :presence => true
end
