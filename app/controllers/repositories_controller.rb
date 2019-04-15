class RepositoriesController < ApplicationController

  def index
    response = Faraday.get "https://github.com/user"
    body = JSON.parse(user.body)
    @user = body["login"]
  end
end
