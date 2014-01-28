class User < ActiveRecord::Base

	validates_presence_of :oauth_token


end
