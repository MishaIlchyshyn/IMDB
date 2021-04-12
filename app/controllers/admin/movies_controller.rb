class Admin::MoviesController < Admin::BaseController
  before_action :get_movie, only: %i[show edit update destroy]

  def index
    @movies = Movie.all
  end

  def new
    @movie = current_admin.movies.new
  end

  def show
  end

  def create
    @movie = current_admin.movies.new(movie_params)
    if @movie.save
      redirect_to admin_movie_path(@movie)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @movie.update(movie_params)
      redirect_to admin_movie_path(@movie)
    else
      render 'edit'
    end
  end

  def destroy
    if @movie.delete
      redirect_to admin_movies_path
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :text, :category)
  end

  def get_movie
    @movie = Movie.find(params[:id])
  end
end