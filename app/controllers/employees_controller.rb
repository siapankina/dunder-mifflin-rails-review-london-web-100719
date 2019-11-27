class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
    @the_dog = Dog.all.find { |d|
      d.id == @employee.dog_id
    }
  end

  def new
    @employee = Employee.new
  end

  def create
    employee = Employee.new(employee_params)
    byebug
    if employee.save
      redirect_to employee
    else
      render new_employee_path
    end
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
  end
end
