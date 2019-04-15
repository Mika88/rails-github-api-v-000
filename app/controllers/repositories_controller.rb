class RepositoriesController < ApplicationController

  def index
    response = Faraday.get("https://github.com/user/repos", {}, {'Authorization' => "token #{session[:token]}", "Accept" => "application/json"})
    @repos_array = JSON.parse(response.body)
    binding.pry
  end
end
