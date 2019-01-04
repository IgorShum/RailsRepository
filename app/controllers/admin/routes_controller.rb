class Admin::RoutesController < Admin::BaseController
	before_action :set_route, only: [:show, :edit, :update, :destroy]

def set_route
	@route = Route.find(params[:id])	
end

def index
@routes = Route.all
end

def show

end

def new
	@route = Route.new
end

def create
	@route = Route.new(route_params)
 if @route.save
 	redirect_to @route
	else render :new
	end
end

def update
	if @route.update(route_params)
		redirect_to @route
	else
		render :edit
	end
end

def edit
	
end

def create
@route = Route.new(route_params)
if @route.save
	redirect_to @route
else
	render :new
end
end

def destroy
	if @route.destroy
	redirect_to routes_path
	else
	render :new
	end	
end

private

def route_params
	params.require(:route).permit(:name, railway_station_ids: [])	
end
end