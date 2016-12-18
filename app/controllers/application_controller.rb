class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def view(cell_name, model = nil, options = {})
    cell_path = cell_name.sub('#', '/cell/')

    render html: concept(cell_path, model, options), layout: true
  end
end
