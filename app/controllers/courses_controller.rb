class CoursesController < ApplicationController
  before_action :find_course, only: [:show, :edit, :update]

  def index
    @courses = Courses.all.order('created_at DESC')
  end

  def new
    @course = Courses.new
  end

  def create
    @course = Courses.new(course_params)

    if @course.save
      redirect_to @course
    else
      render 'new'
    end
  end

  def update
    if @course.update(course_params)
      redirect_to @course
    else
      render 'edit'
    end
  end

  def edit
  end

  def show
  end

  private

  def course_params
    params.require(:courses).permit(:name, :description, :status)
  end

  def find_course
    @course = Courses.find(params[:id])
  end
end
