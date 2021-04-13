class MoviesController < ApplicationController
  before_action :get_movie, only: %i[show]

  def index
    @pagy, @movies = pagy(Movie.all, items: 6)
  end

  def show
  end

  private

  def get_movie
    @movie = Movie.friendly.find(params[:id])
  end
end