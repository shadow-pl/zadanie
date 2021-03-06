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
    if User.exists?(:id => params[:id])
      @user = User.find(params[:id])
    else
    redirect_to :action => "error"
    end
  end
  
  def delete
    if User.exists?(:id => params[:id])
      @user = User.find(params[:id])
      @user.delete
    else
      redirect_to :action => "error"
    end
  end
  def update
    if User.exists?(:id => params[:id])
      @user = User.find(params[:id])
      @user.update_attributes(params[:user])
    else
      redirect_to :action => "error"
    end
  end
end
