class RepositoriesController < ApplicationController

  def index
    response = Faraday.get("https://api.github.com/user")
    body = JSON.parse(response.body)
    raise body.inspect
    @user = body["login"]
  end
end
