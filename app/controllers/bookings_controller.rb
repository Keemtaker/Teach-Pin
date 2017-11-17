class BookingsController < ApplicationController
  before_action :set_lesson, only: [:create, :update]

  def create
    @booking = Booking.new(booking_params)
    @booking.lesson = @lesson
    @booking.user = current_user
    @booking.status = 'pending'
    @booking.save
    redirect_to lesson_path(@lesson)
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to lesson_path(@lesson)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to lesson_path(@lesson)
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:lesson_id])
  end

  def booking_params
    params.require(:booking).permit(:booking_time, :status)
  end
end
