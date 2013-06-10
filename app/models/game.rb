class Game < ActiveRecord::Base
  has_many :races
  has_many :users, :through => :race
end
