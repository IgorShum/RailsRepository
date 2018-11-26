class EconomyCarriage < Carriage
	validates :number, :side_top_seats, :side_bottom_seats, presence: true
end