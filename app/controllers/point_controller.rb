class PointController < ApplicationController

def index
    point = Point.all
    render json: point, status: :created
end

def create
    point = Point.create(params.permit(:user_id, :trash_id, :puntos))
    render json: point, status: :create
end



end
