class AssignmentsController < ApplicationController
 def index
    @assignments = Assignment.all
  end


  def new
    @assignment = Assignment.new
  end

  def new_assignments
    @assignment = Assignment.new(assignment_params)

    if @assignment.save
      redirect_to index_assignments_path
    else
      redirect_to @assignment, notice: 'there was an error creating a new student'
    end
  end

  def show
    @assignment = Assignment.find(params[:assignment])
  end
  

  def edit
    @assignment = Assignment.find(params[:assignment])
  end

  def update
   
    @assignment = Assignment.find(params[:assignment])
    if @assignment.update
      redirect_to index_assignments_path
    else
      render 'edit'
    end
  end

  def destroy
    @assignment = Assignment.find(params[:assignment])
    @assignment.destroy
    redirect_to new_assignments_path

  end
end
  
  private
    def assignment_params
      params.require(:assignment).permit(:name, :score, :notes)
    end
