class CreateEmailSubscribers < ActiveRecord::Migration
  def change
    create_table :email_subscribers do |t|
      t.string :email

      t.timestamps
    end
  end
end
