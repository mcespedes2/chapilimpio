class TrashController < ApplicationController

def index
    trash = Trash.all
    render json: trash, status: :created
end

def create
    trash = Trash.create(params.permit(:latitud, :longitud, :user_id))
    render json: trash, status: :create
end

end
