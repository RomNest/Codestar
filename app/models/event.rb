class Event < ActiveRecord::Base
	validates :title, presence: true, length: {in: 2..25}
	validates :description, presence: true, length: {in: 5..2500}
	validates :start, presence: true
	validates :end, presence: true
end
