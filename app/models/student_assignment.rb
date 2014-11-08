class StudentAssignment
  include Mongoid::Document
  
  belongs_to :student
  belongs_to :assignment

end
