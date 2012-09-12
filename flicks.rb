class Movie
  attr_reader :rank
  attr_accessor :title

  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
  end

  def thumbs_up
    @rank += 1
  end

  def thumbs_down
    @rank -= 1
  end

  def to_s
    "#{@title} has a rank of #{@rank}"
  end
end

movie1 = Movie.new("goonies", 10)
movie1.thumbs_up
puts movie1
puts movie1.title
puts movie1.rank
movie1.title = "Gooneys!"
puts movie1.title

movie2 = Movie.new("ghostbusters", 9)
movie2.thumbs_down
puts movie2

movie3 = Movie.new("goldfinger")
puts movie3
