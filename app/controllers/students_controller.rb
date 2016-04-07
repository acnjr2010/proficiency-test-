class StudentsController < ApplicationController
=begin
  Antes dos métodos show, edit e update ele verifica o método find_classrooms
  em nenhum dos controllers eu coloquei o método da ação destroy já que isso retira informações do banco
  e como ele possui um status eu preferi deixar ativando e inativando status.
=end
  before_action :find_student, only: [:show, :edit, :update]

  def index
    @students = Students.all.order('created_at DESC')
  end

  def new
    @student = Students.new
  end

  #se a matricula for salva ele redireciona para a tela show, caso contrário ela renderiza a tela new com os erros na tela
  def create
    @student = Students.new(students_params)

    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  #salva se der certo ele redireciona para mostrar as informações salvas, se não ele reinderiza a tela edit
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
  #os params que são esperados e salvos
  def students_params
    params.require(:students).permit(:name, :register_number, :status)
  end

  #busca um curso expecifico
  def find_student
    @student = Students.find(params[:id])
  end
end
