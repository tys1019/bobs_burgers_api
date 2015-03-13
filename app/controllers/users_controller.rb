class UsersController < ApplicationController
  def sign_in

    user = User.find_by(email: params['user']['email'])

    if user && user.authenticate(params['user']['password'])
      render json: { token: user.token }
    else
      head :unauthorized
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: { token: @user.token }
    else
      render json: {message: 'failed', status: 500}
    end
  end


  def user_params
    params.require(:user).permit(:name, :email, :password, :address)
  end
end
