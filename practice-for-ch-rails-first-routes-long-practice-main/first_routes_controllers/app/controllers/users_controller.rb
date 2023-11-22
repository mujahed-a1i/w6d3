class UsersController < ApplicationController
  
  def index 
    render plain: "I'm in the index action!"
  end

  def show
    render json: params
  end

  def create
    user = User.new(params.require(:user).permit(:user_attributes_here))
    # replace the `user_attributes_here` with the actual attribute keys
    user.save!
    render json: user
  end

  # def update

  # end

  # def destroy

  # end

end