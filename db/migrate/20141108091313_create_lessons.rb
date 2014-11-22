class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :duration
      t.string :type
      t.references :section, index: true

      t.timestamps
    end
  end
end
