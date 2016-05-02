class HomeController < ApplicationController
  include ApplicationHelper

  def index
    redirect_to articles_path
  end
end