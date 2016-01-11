class User < ActiveRecord::Base
	has_many :bookmarks

	validates :email, presence: true
	validates :password, presence: true

	  def authenticate(given_password)
	    return self if self.password == given_password
	  end
end

