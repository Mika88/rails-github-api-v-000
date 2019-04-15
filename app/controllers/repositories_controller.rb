class RepositoriesController < ApplicationController

  def index
    response = Faraday.get("hhttps://api.github.com/user")
    body = JSON.parse(response.body)
    @user = body["login"]
  end
end
