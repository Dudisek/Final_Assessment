class User < ActiveRecord::Base
	has_many :bookmarks

	validates :email, presence: true
	validates :password, presence: true

	  def self.authenticate(user, password)
	    if user.password == password
	      return user
	    else
				false
	    end
	  end
end

