class MoviesController < ApplicationController
  before_action :get_movie, only: %i[show]

  def index
    @movies = Movie.all
  end

  def show
  end

  private

  def get_movie
    @movie = Movie.find_by(uuid: params[:id])
  end
end