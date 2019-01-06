class SearchesController < ApplicationController
  def new
  end

  def show
  	@stations = RailwayStation.all
  	
  end
end
