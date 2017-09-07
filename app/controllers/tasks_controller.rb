class TasksController < ApplicationController

	def new
		@task = Task.new
	end

	def create
		task_params = params[:task].permit(:description, :priority)
		@task = Task.new(task_params)
		if @task.save
			redirect_to task_path(id: @task_id)
		else
			render: new
		end
	end

	def show
		@task = Task.find(params[:id])
	end

	def edit
		@task = Task.find(params[:id])
	end

	def update
		task_params = params[:task].permit(:description, :priority)
		@task = Task.find(params[:id])
		if @task.update(task_params)
			redirect_to task_path(:id @task_id)
		else
			render: view
		end
		redirect_to task_path(:id @task_id)
	end

	def complete
		@task =Task.find(params[:id])
		@task.destroy
		redirect_to tasks_path
	end
end
