class UsersController < ApplicationController

  def create
    user = User.create(user_params)
    if user.valid?
      if params[:national_dish_attributes]
        params[:national_dish_attributes].each do |national_dish_param|
          user.national_dish << NationalDish.find(national_dish_param[:id])
        end
      end
      render json: { token: encode_token(user_payload(user)), user: user }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def index
    users = User.all
    render json: UserSerializer.new(users)
  end

  def profile
    render json: UserSerializer.new(current_user)
  end

  private
  def user_params
    params.require(:userData).permit(:username, :password)
  end
  
end
