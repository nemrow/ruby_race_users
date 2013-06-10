class User < ActiveRecord::Base
	has_many :races
	has_many :games, :through => :race
end
