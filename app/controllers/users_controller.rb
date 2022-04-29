class UsersController < ApplicationController

  # method create User with strong params
  def create
    user = User.new(user_params)
    user.nickname = params[:email].split("@")[0] if params[:email]
    if user.save!
      render json: user, :status => 201
    end
  rescue ActiveRecord::RecordNotUnique
    render json: {error: "Nickname ya existe"} , :status => 200
  rescue ActiveRecord::RecordInvalid => e
    render json: {error: "La edad debe estar entre 18 y 100"} , :status => 200
  rescue => e
    render json: {error: e} , :status => 500
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :phone, :age)
  end

end
