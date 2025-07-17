class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end
  def show
    @user = User.find_by(id: current_user.id)
    render :show
  end
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      image_url: params[:image_url],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
  def update
@user = User.find_by(id: current_user.id)
@user.update(
image_url: params[:image_url]
)
render :show
  end
end
