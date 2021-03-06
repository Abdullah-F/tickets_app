class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :assigned_user_id, null: false
      t.date :due_date, null: false
      t.integer :status_id
      t.integer :progress, null: false, default: 0

      t.timestamps
    end
  end
end
