class EmployeesController < ApplicationController
  
  def new
    @employee = Employee.new
  end
  
  def create
    @employee = Employee.new(employee_params)
    @employee.save
    redirect_to @employee
  
  end
    
  def edit
  end
    
  def show
    @employee = Employee.find(params[:id])
  end
  
  def index
    @employees = Employee.all
  end
  
    
  private
  
    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :employee_id)
    end
    
end
