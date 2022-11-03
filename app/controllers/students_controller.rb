class StudentsController < ApplicationController
  def index
    @students = Student.order(:name)
  end

  def show
  end
end
