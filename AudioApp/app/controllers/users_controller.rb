class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find_by(id: params['id'])

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new( user_params )
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path( @user ) # I need this to redirect to either engineer show/artist show depending on user_type
    else
      render :new
    end
  end

  def edit
    @user = User.find_by(id: params['id'])
  end

  def update
    user = User.find_by( id: params['id'] )
    user.update ( user_params )
    redirect_to "/users/#{user.id}"
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :user_type, :password, :password_confirmation)
  end

end
