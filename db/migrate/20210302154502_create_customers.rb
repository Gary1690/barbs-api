class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :number

      t.timestamps
    end
  end
end
