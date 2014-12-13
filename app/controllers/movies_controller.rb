class MoviesController < ApplicationController


  def index

  end

  def search

    results = params[:q]

    response = RestClient.get "http://www.omdbapi.com/?s=#{results}"
    @movies = JSON.parse(response.body)
  end

end
