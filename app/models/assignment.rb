class Assignment 
  include Mongoid::Document

  field :name, type: String
  field :grade, type: String
  field :notes, type: String

 embedded_in :student

end

