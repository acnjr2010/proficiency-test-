class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.datetime :entry_at

      t.timestamps
    end
    add_index :classrooms, :id
  end
end
