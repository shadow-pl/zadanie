class UsersController < ApplicationController

  def show_all
    @users = User.all
  end
  def add
    @user = User.new(params[:user])
    @user.save
  end  
  def show
    @user = User.find(params[:id])
  end
  
  def delete
    @user = User.find(params[:id])
    @user.delete
  end
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
  end
 
end
