class TodoItem < ActiveRecord::Base
	def self.number_of_completed_todos
		return TodoItem.all.where(completed: true).size
	end
end
