class SubtasksController < ApplicationController

	before_action :set_task

	def index
		@subtasks = Subtask.all
	end

	def create
		@subtask = @task.subtasks.create(subtask_params)
		redirect_to @task
	end

	def destroy
		@subtask = @task.subtasks.find(params[:id])
		if @subtask.destroy
			flash[:sucess] = "Steps deleted"
		else
			flash[:error] = "Not comepleted"
		end
		redirect_to @task
	end

	private

	def set_task
		@task = Task.find(params[:task_id])
	end

	def subtask_params
		params[:subtask].permit(:description)
	end

end



