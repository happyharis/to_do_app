class TasksController < ApplicationController

	def index
		@tasks = Task.all
	end

	def new
		@task = Task.new
	end

	def create
		task_params = params[:task].permit(:description, :priority)
		@task = Task.new(task_params)
		if @task.save
			redirect_to tasks_path
		else
			render :new
		end
	end

	def show
		@task = Task.find(params[:id])
		@subtask = Subtask.new
	end

	def edit
		@task = Task.find(params[:id])
	end

	def update
		task_params = params[:task].permit(:description, :priority)
		@task = Task.find(params[:id])
		if @task.update(task_params)
			redirect_to tasks_path
		else
			render :view
		end
		
	end

	def destroy
		@task = Task.find(params[:id])
		@task.destroy
		redirect_to tasks_path
	end

	def completed
		@task = Task.find(params[:id])
	end

end
