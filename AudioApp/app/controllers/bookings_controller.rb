class BookingsController < ApplicationController
  def index
    @all_bookings = Booking.all
  end

  def show
    @booking = Booking.find_by(id: params['id'])
  end

  def new
    @booking = Booking.new
    @duration = (0..12).to_a
  end

  def create
    booking = Booking.create( booking_params )
    booking.user = @current_user
    booking.save
    redirect_to "/bookings/#{booking.id}" #I want this to redirect to the artists list of upcoming bookings
  end

  def edit
    @booking = Booking.find_by(id: params['id'])
  end

  def update
    booking = Booking.find_by(id: params['id'])
    booking.update ( booking_params )
    redirect_to "/bookings/#{booking.id}"
  end

  def destroy
    booking = Booking.find_by(id: params['id'])
    booking.destroy
    redirect_to "/bookings"
  end

  private
  def booking_params
    params.require(:booking).permit(:artist_id, :engineer_id, :appointment_time)
  end
end
