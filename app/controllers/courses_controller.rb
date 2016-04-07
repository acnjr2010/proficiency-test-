class CoursesController < ApplicationController
=begin
  Antes dos métodos show, edit e update ele verifica o método find_course.
  em nenhum dos controllers eu coloquei o método da ação destroy, já que isso retira informações do banco
  e como ele possui um status eu preferi deixar ativando e inativando status.
=end

  before_action :find_course, only: [:show, :edit, :update]

  def index
    @courses = Courses.all.order('created_at DESC')
  end

  def new
    @course = Courses.new
  end

  #salva se der certo ele redireciona para mostrar as informações salvas, se não ele reinderiza a tela new
  def create
    @course = Courses.new(course_params)

    if @course.save
      redirect_to @course
    else
      render 'new'
    end
  end

  #salva se der certo ele redireciona para mostrar as informações salvas, se não ele reinderiza a tela edit
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
  #os params que são esperados e salvos
  def course_params
    params.require(:courses).permit(:name, :description, :status)
  end

  #busca um curso expecifico
  def find_course
    @course = Courses.find(params[:id])
  end
end
