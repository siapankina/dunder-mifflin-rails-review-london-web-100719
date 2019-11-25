class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
    @employees = Employee.all.select { |e|
      e.dog_id == @dog.id
    }
  end
end
