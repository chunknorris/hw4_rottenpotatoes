class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def self.find_related_movies(id)
  	director = Movie.find(id).director
  	(director and director.length > 0)? Movie.find_all_by_director(director) : nil
  end
end
