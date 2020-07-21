class Api::ArticlesController < ApplicationController
  def index
    response = HTTP.get("http://newsapi.org/v2/everything?q=#{params[:search]}&from=2020-07-20&to=2020-07-20&sortBy=popularity&apiKey=")
    @articles = response.parse
    
    render 'index.json.jb'
  end
end
