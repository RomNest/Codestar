class Vacancy < ActiveRecord::Base
	validates :name, presence: true, length: {in: 2..25}
	validates :country, presence: true, length: {in: 2..25}
	validates :descritpion, presence: true, length: {in: 5..2500}
	validates :requirements, presence: true, length: {in: 5..2500}
	validates :responsibilities, presence: true, length: {in: 5..2500}
	validates :tools_and_techonologies
end
