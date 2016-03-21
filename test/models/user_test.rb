require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def test_user_created_with_valid_params
  	
  	assert_difference 'User.count',2 do
  		@u=User.new(:first => "Nikhil" ,
  	 		   :last => "Appasani" ,
  	 		   :email => "asd@asd.com")
  		@u.save

  		@u=User.new(:first => "Nikhil" ,
  	 		   :last => "Appasani" ,
  	 		   :email => "asd@asd.com")
  		@u.save
  	end

  	assert @u.valid?
  	assert @u.persisted?

  end

  def test_user_creation_without_params
  	u=User.new()
  	u.save
  	assert !u.persisted? , "persisted even without valid params"
  	#puts u.errors.full_messages.join(" ")
  	assert_match /first can't be blank/i , u.errors.full_messages.join(" ")
  	assert_match /email can't be blank/i , u.errors.full_messages.join(" ")

  end

end
