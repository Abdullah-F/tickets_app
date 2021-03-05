class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :send_due_date_reminder, limit: 1, null: false, default: 0
      t.integer :due_date_reminder_interval, null: false
      t.datetime :due_date_reminder_time, null: false
      t.string :time_zone, null: false, default: "UTC"

      t.timestamps
    end
  end
end
