class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.integer :status

      t.timestamps
    end
    add_index :courses, :id
  end
end
