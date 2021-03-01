class SessionsController < ApplicationController

  def login

  end 

  def signup

  end 

  def logout

  end 
  
  private
  def user_params 
    params.required(:user).permit(:name,:lastname,:email,:password)
  end
end
