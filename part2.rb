# Part 2: Enumerable
# Create an array of movies with budgets less than 100
# Create an array of movies that have Leonardo DiCaprio as a star

movies = []

movies << {
    title: "Forest Gump",
    budget: 55,
    stars: ["Tom Hanks"]
}
movies << {
    title: "Star Wars",
    budget: 11,
    stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
    title: "Batman Begins",
    budget: 150,
    stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
    title: "Titanic",
    budget: 200,
    stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
    title: "Inception",
    budget: 160,
    stars: ["Leonardo DiCaprio", "JGL"]
}


# get movie budgets, push to array, and titles of movies that match budget criteria
budgets = []
  movies.each do |x|
    if x[:budget] < 100
      budgets.push x[:title]
    end
  end

puts budgets


# print movie titles that have leonardo dicaprio in them
leos = []
  movies.each do |y|
    if y[:stars].to_s.include? "Leonardo DiCaprio"
      leos.push y[:title]
    end
  end

puts leos