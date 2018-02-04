class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.integer :card_id
      t.datetime :meeting_time
      t.string :status

      t.timestamps
    end
  end
end
