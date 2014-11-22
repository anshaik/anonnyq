class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :username
      t.integer :age
      t.string :gender
      t.text :bio
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.references :user, index: true

      t.timestamps
    end
  end
end
