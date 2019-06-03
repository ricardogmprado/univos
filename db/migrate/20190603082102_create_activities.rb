class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :photo
      t.string :title
      t.string :description
      t.datetime :date
      t.string :meeting_point
      t.integer :number_of_people
      t.string :gender
      t.string :category
      t.float :latitude
      t.float :longitude
      t.integer :min_age
      t.integer :max_age
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
