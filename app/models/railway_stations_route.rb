class RailwayStationsRoute < ActiveRecord::Base
belongs_to :railway_stations, optional: true
belongs_to :route, optional: true
end