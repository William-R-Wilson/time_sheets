class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :employee_id
      t.boolean :clocked_in

      t.timestamps
    end
  end
end
