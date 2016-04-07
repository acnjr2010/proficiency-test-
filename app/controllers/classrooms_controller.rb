class ClassroomsController < ApplicationController
=begin
  Antes dos métodos show, edit e update ele verifica o método find_classrooms
  em nenhum dos controllers eu coloquei o método da ação destroy já que isso retira informações do banco
  e como ele possui um status eu preferi deixar ativando e inativando status.
=end

  before_action :find_classrooms, only: [:show, :edit, :update]

  def index
    @classrooms = Classroom.all.order('created_at DESC')
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new(classroom_params)

    #se a matricula for salva ele redireciona para a tela show, caso contrário ela renderiza a tela new com os erros na tela
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
  #os params que são esperados e salvos
  def classroom_params
    params.require(:classroom).permit(:students_id, :courses_id, :entry_at)
  end

  #busca uma matrícula expecifica
  def find_classrooms
    @classroom = Classroom.find(params[:id])
  end
end
