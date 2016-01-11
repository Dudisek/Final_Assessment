class User < ActiveRecord::Base
	has_many :bookmarks

	validates :email, presence: true
	validates :password, presence: true
end

