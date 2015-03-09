class EmployeesController < ApplicationController
  
  def new
    @employee = Employee.new
  end
  
  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      flash[:success] = "New employee created"
      redirect_to @employee
    else
      render "new"
    end
  
  end
    
  def edit
    @employee = Employee.find(params[:id])
  end
    
  def update 
    @employee = Employee.find(params[:id])
    if @employee.update_attributes(employee_params)
      flash[:success] = "Employee updated"
      redirect_to @employee
    else
      render "edit"
    end
  end
    
  def show
    @employee = Employee.find(params[:id])
  end
  
  def index
    @employees = Employee.all
  end
  
  def destroy
    Employee.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to employees_url
  end
    
    
  private
  
    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :employee_number)
    end
    
end
