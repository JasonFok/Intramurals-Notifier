class Team < ActiveRecord::Base
	has_many :members, dependent: :destroy
	has_many :games, dependent: :destroy

	validates :name, presence: true, length: {minimum: 2}
	validates :sport, presence: true, length: {minimum: 2}
end
