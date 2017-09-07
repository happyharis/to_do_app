class FilesController < ApplicationController

	def home
		@task = Task.all
	end
end
