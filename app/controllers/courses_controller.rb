class CoursesController < ApplicationController
  def index
  	@courses = Course.all

  end

  def new
  	@course = Course.new
  end

  def show
    @course = Course.find(params[:course])
    @students = Student.all
  end

  def create
  	@course = Course.new(course_params)

  	if @course.save
  		redirect_to courses_path
  	else
  		redirect_to @course, notice: "there was a problem"
  end
end

def indexstudent
	@students = Student.all
end

def newstudentcourse
    @student = Student.new
  end

def new_students
    @student = Student.new(student_params)

   if @student.save
    redirect_to index_student_path
  else
    redirect_to @student, notice: "there was an error creating a new student"
    end
  end

  def destroy
  end

  private
  def course_params
  	params.require(:course).permit(:name, :schoolyear)
  end

def student_params
      params.require(:student).permit(:firstname, :lastname, :classno, :grade, :notes)
    end


end



