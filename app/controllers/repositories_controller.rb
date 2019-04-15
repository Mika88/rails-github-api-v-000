class RepositoriesController < ApplicationController
  
  def index
    user = Faraday.get "https://github.com/user" 
  end

end
