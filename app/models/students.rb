class Students < ActiveRecord::Base
  #Validações, garantindo que os campos estejam preenchidos, caso não a mensagem é salva no error e emitida como mensagem de erro para o usuário
  validates_presence_of :name, message: "não pode estar em branco"
  validates_presence_of :register_number, message: "(RG) não pode ficar em branco"
  validates_presence_of :status, message: "não pode ser indefinido"

  #Relacionamento, um estudante pode fazer várias matriculas.
  has_many :classroom
end
