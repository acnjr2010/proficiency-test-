class Classroom < ActiveRecord::Base
  #Relacionamento cada matrícula pode ter um estudante e um curso
  belongs_to :students
  belongs_to :courses
end
