class TasksController < ApplicationController
  def index
    @tasks = Task.order(:position)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
end
