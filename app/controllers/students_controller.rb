class StudentsController < ApplicationController
  def index
    @students = Student.all
  end


  def new
    @student = Student.new
  end

  def new_students
    @student = Student.new(student_params)

    if @student.save
      redirect_to students_path
    else
      redirect_to @student, notice: 'there was an error creating a new student'
    end
  end

  def show
    @student = Student.find(params[:student])
  end
  

  def edit
    @student = Student.find(params[:student])
  end

  def update
    @student = Student.find(params[:student])
    if @student.update
      redirect_to students_path
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:student])
    @student.destroy
    redirect_to students_path

  end
end
  
  private
    def student_params
      params.require(:student).permit(:firstname, :lastname, :classno, :grade, :notes)
    end

