class BookingsController < ApplicationController
  after_action redirect_to lessons_path(@booking)
  before_action :set_lesson, only: [:create, :update]

  def create
    @booking = Booking.new(booking_params)
    @booking.lesson = @lesson
    @booking.user = current_user
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
