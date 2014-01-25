class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :mobilephone
      t.string :email
      t.string :notes

      t.timestamps
    end
  end
end
