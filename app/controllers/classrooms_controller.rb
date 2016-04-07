class ClassroomsController < ApplicationController
  before_action :find_classrooms, only: [:show, :edit, :update]

  def index
    @classrooms = Classroom.all.order('created_at DESC')
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new(classroom_params)

    if @classroom.save
      redirect_to @classroom
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  private
  def classroom_params
    params.require(:classroom).permit(:students_id, :courses_id, :entry_at)
  end

  def find_classrooms
    @classroom = Classroom.find(params[:id])
  end

end
