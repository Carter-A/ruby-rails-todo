class TasksController < ApplicationController
	def destroy
		Task.find(params[:id]).destroy
		redirect_to '/'
	end
	def new
		@task = Task.new
	end
	def create
		@task = Task.new(task_params)
		if @task.save
			redirect_to '/'
		else
			render 'new'
		end
	end
	private
		def task_params
			params.require(:task).permit(:todo)
		end
end
