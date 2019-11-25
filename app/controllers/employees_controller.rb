class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
    @the_dog=Dog.all.find {|d|
    d.id==@employee.dog_id}
    
  end
end
