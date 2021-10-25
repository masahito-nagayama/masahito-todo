class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.where(params[:id])
  end
end
