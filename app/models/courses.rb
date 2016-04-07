class Courses < ActiveRecord::Base
  validates_presence_of :name, message: "não pode ficar em branco"
  validates_presence_of :description, message: "não pode ficar em branco"
  validates_presence_of :status, message: "não pode ficar em branco"

  has_many :classroom
end
