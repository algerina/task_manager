class TasksController < ApplicationController
  def index
    @page = params[:page].to_i
    @tasks = ["Dance", "Draw", "Walk"]
  end

  def new
  end

  def edit
  end
end
