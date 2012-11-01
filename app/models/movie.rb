class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def self.find_by_director(id)
    movie = self.find(id)
    director = movie.director
    if (director.empty? == false)
      self.find_all_by_director(director)
    end
  end
end
