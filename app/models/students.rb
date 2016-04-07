class Students < ActiveRecord::Base
  validates_presence_of :name, message: "não pode estar em branco"
  validates_presence_of :register_number, message: "(RG) não pode ficar em branco"
  validates_presence_of :status, message: "não pode ser indefinido"

  has_many :classroom
end
