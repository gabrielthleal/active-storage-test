class Api::UsersController < ApplicationController
    def create
    user = User.new(create_params)

    if user.save
      debugger
      render json: success_json(user), status: :created
    else
      render json: error_json(user), status: :unprocessable_entity
    end
  end

  private

  def create_params
    params.require(:user).permit(:username, :avatar)
  end

  def success_json(user)
    {
      user: {
        id: user.id,
        username: user.username,
      }
    }
  end

  def error_json(user)
    { errors: user.errors.full_messages }
  end
end
