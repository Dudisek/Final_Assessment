class User < ActiveRecord::Base
	has_many :bookmarks

	validates :email, presence: true
	validates :password, presence: true

	  def self.authenticate(email, password)
	    user = find_by(email: email)
	    if user.password == password
	      user
	    else
				false
	    end
	  end
end

