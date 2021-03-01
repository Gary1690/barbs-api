class UsersController < ApplicationController

  def show 
    
  end 

  def update

  end 

  private
  def user_params 
    params.required(:user).permit(:name,:lastname,:email,:password)
  end

end
