class SubtasksController < ApplicationController

	before_action :set_task

	def index
		@subtasks = Subtask.all
	end

	def create
		subtask_params = params.require(:description).permit(:description, :due, :priority)
		task.subtasks.create(subtask_params)
		redirect_to task_path(id: task.id)
	end

	def complete
		@subtask.update_attribute(:completed_at, Time.now)
		redirect_to "tasks#index"
	end

	def destroy
		@subtask = @task.subtasks.find(params[:id])
		if @subtask.destroy
			flash[:sucess] = "Steps deleted"
		else
			flash[:error] = "Not comepleted"
		end
		redirect_to task_subtask_path
	end

	private

	def set_task
		@task = Task.find(params[:task_id])
	end

	def subtask_params
		params[:subtask].permit(:description)
	end

end


