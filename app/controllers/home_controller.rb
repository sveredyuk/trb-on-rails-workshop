class HomeController < ApplicationController
  def index
    view 'home#index', '@apotonick', bang: 3
  end
end
