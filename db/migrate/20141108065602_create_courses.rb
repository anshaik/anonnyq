class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :summary
      t.string :location

      t.timestamps
    end
  end
end
