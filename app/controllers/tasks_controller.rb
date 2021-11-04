class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path, notice: "タスク #{@task.name} を登録しました。"
    else
      render :index
    end
  end
  
  def show
    @task = Task.find(params[:id])
  end
  private

  def task_params
    params.permit(:name, :description, :deadline)
  end
end
