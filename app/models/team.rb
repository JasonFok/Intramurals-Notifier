class Team < ActiveRecord::Base
	has_many :members, dependent: :destroy
	validates :name, presence: true, length: {minimum: 2 }
	validates :sport, presence: true, length: {minimum: 2}
end
