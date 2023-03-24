class StudentsController < ApplicationController

  # methods for our controller actions
  # index
  def index
    student = Student.all
    render json: student
  end

  # grades
  def grades
    # Student.find_by(grade: params[:grade])
    grade = Student.all
    render json: grade.order('grade DESC')
  end

  def highest_grade
   max = Student.maximum('grade')
   grade = Student.find_by(grade: max)
   render json: grade
  end

end
