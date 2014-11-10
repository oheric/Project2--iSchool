class Student
  include Mongoid::Document

  field :firstname, type: String
  field :lastname, type: String
  field :classno, type: String
  field :grade, type: String
  field :notes, type: String

  has_many :assignments
  belongs_to :course

end
