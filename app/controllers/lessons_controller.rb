class LessonsController < ApplicationController
    before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  def index
    @lessons = Lesson.all
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect to lessons_path
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
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
