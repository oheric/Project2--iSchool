class Assignment
  include Mongoid::Document

  field :name, type: String
  field :score, type: Float
  field :notes, type: String

  has_many :student_assignments

end

