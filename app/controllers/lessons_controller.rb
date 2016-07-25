class LessonsController < ApplicationController
  before_action :logged_in_user

  def create
    @course = Course.find_by(id: params[:course_id])
    @lesson = Lesson.new(user_id: current_user.id, course_id: @course.id)
    @check = Lesson.find_by(user_id: current_user.id, course_id: @course.id)
    if @check.nil?
      @lesson.save
      redirect_to course_lesson_path(@course.id, current_user.id)
    else
      redirect_to course_lesson_path(@course.id, current_user.id)
    end
  end

  def show
    @words = Word.find_by(course_id: params[:course_id])
  end
end
