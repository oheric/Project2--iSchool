class Course
  include Mongoid::Document
  field :name, type: String
  field :schoolyear, type: String

  has_many :students
end
