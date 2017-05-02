class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find_by(id: params['id'])

    # b1 = Booking.create(appointment_time: DateTime.parse("03/05/2017 13:00"), engineer_id: @current_user.id, artist_id: Artist.last.id, user_id: @current_user.id)
    #
    #  @eng_book = Booking.where(engineer_id: @current_user)
    # irb

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
