class StudentsController < ApplicationController
  def index
    @students = Student.all
  end


  def new
    @student = Student.new
  end

  #def new_students
   # @id = params[:course_id]
    #@course = Course.find(@id)
    #@course.students << Student.new(params.require(:student).permit(:firstname, :lastname, :classno, :grade, :notes))
    #if @course.save
     # redirect_to show_course_path(:course => @id)
    #end
  #end


  def show
    @student = Student.find(params[:student])
    @assignment = Assignment.new
  end
  
  def new_assignments
    @id = params[:student_id]
    @student = Student.find(@id)
    @student.assignments << Assignment.new(params.require(:assignment).permit(:name, :grade, :notes))
    if @student.save
      redirect_to show_path(:student => @id)
    end
  end

  def edit
    @student = Student.find(params[:student])
  end

  def update
   @student = Student.find(params[:student])
   if @student.update(student_params) 
      redirect_to students_path
    else
      render 'edit'
    end
  end


  def destroy
    @student = Student.find(params[:student])
    @student.destroy
    redirect_to show_course_path

  end


  private
    def student_params
      params.require(:student).permit(:firstname, :lastname, :classno, :grade, :notes)
    end
end
  


