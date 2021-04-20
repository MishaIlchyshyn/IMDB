class MoviesQuery
  def initialize(search, movies = Movie.all)
    @search = search
    @movies = movies
  end

  def results
    fetch_categories
  end

  private

  def fetch_categories
    return @movies if @search.blank?

    @movies.where(category: @search)
  end
end