class UsersController < ApplicationController

  def show_all
    @users = User.all
  end
  def add
    @user = User.new(params[:user])
    @user.save
    @user.errors.full_messages 

  end  
  def show
    @user = User.find(params[:id])
  end
  
  def delete
    @user = User.find(params[:id])
    @user.delete
  end
  
end
