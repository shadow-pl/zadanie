class UsersController < ApplicationController
   def index
    redirect_to :action => 'show_all'
  end
  def show_all
    @users = User.all
  end
  def add
    @user = User.new(params[:user])
    if request.post?
      @user.save
        if @user.save
          redirect_to :action => "show_all"
        end
    end 
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
