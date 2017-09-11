class Task < ActiveRecord::Base

	has_many :subtasks
	validates :priority, presence: true
	validates :description, presence: true

end