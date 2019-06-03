class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :avatar
      t.string :email
      t.string :name
      t.string :location
      t.integer :age
      t.string :gender
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
