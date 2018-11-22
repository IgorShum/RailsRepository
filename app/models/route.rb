class Route < ApplicationRecord
	has_and_belongs_to_many :railway_stations
	validates :namem presence: true
end
