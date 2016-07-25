class LessonsController < ApplicationController
  before_action :logged_in_user

  def create
    @course = Course.find_by(id: params[:course_id])
    @lesson = Lesson.new(user_id: current_user.id, course_id: @course.id)
    @lesson.save
  end
end
