class StudentsController < ApplicationController
  before_action :find_student, only: [:show, :edit, :update]

  def index
    @students = Students.all.order('created_at DESC')
  end

  def new
    @student = Students.new
  end

  def create
    @student = Students.new(students_params)

    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  def update
    if @student.update(students_params)
      redirect_to @student
    else
      render 'edit'
    end
  end

  def edit
  end

  def show
  end

  private

  def students_params
    params.require(:students).permit(:name, :register_number, :status)
  end

  def find_student
    @student = Students.find(params[:id])
  end
end
