class Student
  include Mongoid::Document

  field :firstname, type: String
  field :lastname, type: String
  field :classno, type: String
  field :grade, type: String
  field :notes, type: String

<<<<<<< HEAD
  belongs_to :course
  
  has_many :assignments

  
  
=======
  has_many :assignments
  belongs_to :course
>>>>>>> 726cec383f2eccbcd3d71951e13fae0430b955ed

end
