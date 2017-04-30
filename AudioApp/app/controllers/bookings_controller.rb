class BookingsController < ApplicationController
  def index
    @all_bookings = Booking.all
    
  end

  def show
  end

  def new
  end

  def edit
  end
end
