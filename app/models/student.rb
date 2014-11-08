class Student
  include Mongoid::Document

  field :firstname, type: String
  field :lastname, type: String
  field :classno, type: String
  field :grade, type: String
  field :notes, type: String

  has_many :student_assignments

def assignments
    Assignment.find assignment_ids
  end

  def assignment_ids
    assignment_ids_array = []
    self.student_assignments.each do |one_joining|
      if one_joining.assignment_id
        assignment_ids_array.push one_joining.assignment_id
      end 
    end
    assignment_ids_array 
  end

  def assignment_ids=(list)
    self.student_assignments.destroy
    list.each do |assignment_id|
      self.student_assignments.create(assignment_id: assignment_id)
    end
  end

  # some way of showing a list
  def join_list
    assignments_string = ""
    assignments.each do |one_assignment|
      assignments_string += " " + one_assignment.name
    end
    assignments_string.slice(2,assignments_string.length - 1)
    assignments_string
  end
end
