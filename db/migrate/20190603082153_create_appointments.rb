class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :user, foreign_key: true
      t.references :activity, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
