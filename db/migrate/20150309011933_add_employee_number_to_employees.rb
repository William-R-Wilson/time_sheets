class AddEmployeeNumberToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :employee_number, :string
  end
end
