class RepositoriesController < ApplicationController

  def index
    response = Faraday.get("https://github.com/user") 
  end

    body = JSON.parse(response.body)
    @user = body["login"]
  end
end
