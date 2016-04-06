class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :courses, :description, :string
  end
end
