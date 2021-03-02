class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :start
      t.datetime :end
      t.boolean :status
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :customer, null: false, foreign_key: true
      t.timestamps
    end
  end
end
