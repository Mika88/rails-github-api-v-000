class RepositoriesController < ApplicationController

  def index
    response = Faraday.post("https://github.com/user") do |req|
    req.body = { 'client_id': ENV['GITHUB_CLIENT_ID'], 'client_secret': ENV['GITHUB_CLIENT_SECRET'] }
    req.headers['Accept'] = 'application/json'
  end
  
    body = JSON.parse(response.body)
    @user = body["login"]
  end
end
