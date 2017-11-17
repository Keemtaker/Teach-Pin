class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  def index
    @lessons = Lesson.where.not(latitude: nil, longitude: nil)
    if params[:category]
      @category = params[:category]
      @lessons = @lessons.where(category: @category)
    end

    @hash = Gmaps4rails.build_markers(@lessons) do |lesson, marker|
      marker.lat lesson.latitude
      marker.lng lesson.longitude
    end
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user = current_user
    if @lesson.save
      redirect_to lessons_path
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
    @lesson = Lesson.find(params[:id])
    @lesson_coordinates = { lat: @lesson.latitude, lng: @lesson.longitude }
    @alert_message = "Your booking was successful. Go to my dashboard to view all your bookings."
  end

  def edit
  end

  def update
    @lesson.update(lesson_params)
  end

  def destroy
    @lesson.destroy
  end

  #creating dashboard logic
  def dashboard
    #accedpted lessons

    @lessons = current_user.lessons
    @accepted_bookings = current_user.bookings.select {|b| b.status == 'accepted' }
    @pending_bookings = current_user.bookings.select {|b| b.status == 'pending' }
    @declined_bookings = current_user.bookings.select {|b| b.status == 'declined' }
    #@accepted_bookings = Booking.joins(:lesson).where(lessons: {user: current_user}, status: "accepted")
    #@pending_bookings = Booking.joins(:lesson).where(lessons: {user: current_user}, status: "pending")
    #@declined_bookings = Booking.joins(:lesson).where(lessons: {user: current_user}, status: "declined")

    @lessons = current_user.lessons
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:description, :location, :category, :price, :title, :user_id)
  end
end
