class RemoveEmployeeIdFromEmployees < ActiveRecord::Migration
  def change
    remove_column :employees, :employee_id, :string
  end
end
