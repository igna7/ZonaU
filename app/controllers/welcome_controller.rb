class WelcomeController < ApplicationController
  before_action :authenticate_autor!, only: [:dashboard]
  before_action :authenticate_admin!, only: [:admindashboard]


  def index
  end

  def dashboard
    @articles = Article.all
  end

  def admindashboard
    @articles = Article.all
  end

end
