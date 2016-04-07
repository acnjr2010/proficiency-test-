class ChangeColumn < ActiveRecord::Migration
  #Na criação da tabela course eu acabei criando a tupla description como text, para não mudar manualmente eu criei
  #uma nova migration modificando o tipo da tupla
  def change
    change_column :courses, :description, :string
  end
end
