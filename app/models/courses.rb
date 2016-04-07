class Courses < ActiveRecord::Base
  #Validações, garantindo que os campos estejam preenchidos, caso não a mensagem é salva no error e emitida como mensagem de erro para o usuário
  validates_presence_of :name, message: "não pode ficar em branco"
  validates_presence_of :description, message: "não pode ficar em branco"
  validates_presence_of :status, message: "não pode ficar em branco"

  # Relacionamento, um curso pode ter muitas matrículas.
  has_many :classroom
end
