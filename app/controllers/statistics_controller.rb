class StatisticsController < ApplicationController

	def index
		@students = Student.all
		@shifts = Shift.scoped
	end
end