# Add a declarative step here for populating the DB with movies.

Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    Movie.create!(movie)
  end
end

#http://www.ruby-doc.org/stdlib-1.9.3/libdoc/test/unit/rdoc/Test/Unit/Assertions.html
Then /the director of "(.*)" should be "(.*)"/ do |e1, e2|
  movie = Movie.find_by_title(e1)
  director = movie.director
  assert_equal(e2, director, "Directors did not match\n")
end
