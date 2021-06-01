class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @plant = Plant.find(params[:plant_id])
    @booking.plant = @plant
    @booking.save
    if @booking.save
      redirect_to plants_path(@plant)
    else
      render :new
    end
  end

  def destroy
    @booking.delete
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
