class UsersController < ApplicationController


def create
    user = User.new(profile_params)
    user.save
    render json: user, status: :ok
end


def profile_params
    params.permit(:name, :email, :password)
end


end
