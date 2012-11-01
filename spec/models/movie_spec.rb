require 'spec_helper'

describe Movie do
  describe 'Find movies with the same director' do
    it 'should search for similar movies' do
      fake_movie = mock('DummyMovie', :director => 'DummyDirector')
      Movie.should_receive(:find).with('DummyMovie').and_return(fake_movie)
      fake_movies = [mock('dummy')]
      Movie.should_receive(:find_all_by_director).with('DummyDirector').and_return(fake_movies)
      Movie.find_by_director('DummyMovie')
    end

    it 'should return -1 if there is no director' do
      fake_movie = mock('DummyMovie', :director => '')
      Movie.should_receive(:find).with('DummyMovie').and_return(fake_movie)
      Movie.find_by_director('DummyMovie').should be_false
    end
  end
end
