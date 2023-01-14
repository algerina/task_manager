class MainController < ApplicationController
  def index
    # render('index')
  end

  def about
    # render('about')
    @created_by = "Algerina"
    @id = params['id']
    @page = params[:page]
  end

  def hello
    redirect_to(action: "index")
  end
end
