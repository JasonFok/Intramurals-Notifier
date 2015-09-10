class Team < ActiveRecord::Base
	validates :name, presence: true, length: {minimum: 2 }
	validates :sport, presence: true, length: {minimum: 2}
end
