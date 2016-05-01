class HomeController < ApplicationController
  include ApplicationHelper

  def index
    @articles = Article.all
    @categories = Category.all
  end
end