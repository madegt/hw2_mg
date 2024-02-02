# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:



# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)

# 0) Drop all tables
#Model.destroy_all

#1) Generate tables in model from the terminal

#rails generate model Studio
#rails generate model Movie
#rails generate model Actor
#rails generate model Role

#2) Create table columns > db>migrate
#on each tab of migrate I created the tables

#3) Migrate 
#gitpod/workspace/hw2_mg (main) $ rails db:migrate

# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)

#4) Delete all existing data

Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

#5) Insert data sample using ruby 

#Studio
new_studio = Studio.new
new_studio["name"] = "Warner Bros."
new_studio.save

#Movie

#build relationship w movies
wb = Studio.find_by({"name" => "Warner Bros."})

new_movie= Movie.new
new_movie["title"] = "Batman Begins"
new_movie["year_released"] = 2005
new_movie["rated"] = "PG-13"
new_movie["studio_id"] = wb["id"]
new_movie.save


new_movie= Movie.new
new_movie["title"] = "The Dark Knight"
new_movie["year_released"] = 2008
new_movie["rated"] = "PG-13"
new_movie["studio_id"] = wb["id"]
new_movie.save

new_movie= Movie.new
new_movie["title"] = "The Dark Knight Rises"
new_movie["year_released"] = 2012
new_movie["rated"] = "PG-13"
new_movie["studio_id"] = wb["id"]
new_movie.save

#Actor 
    #1
new_actor= Actor.new
new_actor["name"] = "Christian Bale"
new_actor.save
    #2
new_actor= Actor.new
new_actor["name"] = "Michael Caine"
new_actor.save
    #3
new_actor= Actor.new
new_actor["name"] = "Liam Neeson"
new_actor.save
    #4
new_actor= Actor.new
new_actor["name"] = "Katie Holmes"
new_actor.save
    #5
new_actor= Actor.new
new_actor["name"] = "Gary Oldman"
new_actor.save
    #6
new_actor= Actor.new
new_actor["name"] = "Heath Ledger"
new_actor.save
    #7
new_actor= Actor.new
new_actor["name"] = "Aaron Eckhart"
new_actor.save
    #8
new_actor= Actor.new
new_actor["name"] = "Maggie Gyllenhaal"
new_actor.save

    #9
new_actor= Actor.new
new_actor["name"] = "Tom Hardy"
new_actor.save
    
   #10
   new_actor= Actor.new
   new_actor["name"] = "Joseph Gordon-Levitt"
   new_actor.save

   #11
   new_actor= Actor.new
   new_actor["name"] = "Anne Hathaway"
   new_actor.save

##Role

#build relationship w movie title
batb = Movie.find_by({"title" => "Batman Begins"})
dak = Movie.find_by({"title" => "The Dark Knight"})
dakrise = Movie.find_by({"title" => "The Dark Knight Rises"})

#build relationship w movie actor 
c_b = Actor.find_by({"name"=>"Christian Bale"})
m_c = Actor.find_by({"name"=>"Michael Caine"})
l_n = Actor.find_by({"name"=>"Liam Neeson"})
k_h = Actor.find_by({"name"=>"Katie Holmes"})
g_old = Actor.find_by({"name"=>"Gary Oldman"})
h_l = Actor.find_by({"name"=>"Heath Ledger"})
a_e = Actor.find_by({"name"=>"Aaron Eckhart"})
m_g = Actor.find_by({"name"=>"Maggie Gyllenhaal"})
t_h=Actor.find_by({"name"=>"Tom Hardy"})
jgl=Actor.find_by({"name"=>"Joseph Gordon-Levitt"})
a_h=Actor.find_by({"name"=>"Anne Hathaway"})

#1st movie
new_role= Role.new
new_role["movie_id"] = batb["id"]
new_role["actor_id"] = c_b["id"]
new_role["character_name"] = "Bruce Wayne"
new_role.save

new_role= Role.new
new_role["movie_id"] = batb["id"]
new_role["actor_id"] = m_c["id"]
new_role["character_name"] = "Alfred"
new_role.save

new_role= Role.new
new_role["movie_id"] = batb["id"]
new_role["actor_id"] = l_n["id"]
new_role["character_name"] = "Ra's Al Ghul"
new_role.save

new_role= Role.new
new_role["movie_id"] = batb["id"]
new_role["actor_id"] = k_h["id"]
new_role["character_name"] = "Rachel Dawes"
new_role.save

#2nd movie
new_role= Role.new
new_role["movie_id"] = dak["id"]
new_role["actor_id"] = g_old["id"]
new_role["character_name"] = "Commissioner Gordon"
new_role.save

new_role= Role.new
new_role["movie_id"] = dak["id"]
new_role["actor_id"] = c_b["id"]
new_role["character_name"] = "Bruce Wayne"
new_role.save

new_role= Role.new
new_role["movie_id"] = dak["id"]
new_role["actor_id"] = m_c["id"]
new_role["character_name"] = "Alfred"
new_role.save

new_role= Role.new
new_role["movie_id"] = dak["id"]
new_role["actor_id"] = h_l["id"]
new_role["character_name"] = "Joker"
new_role.save

new_role= Role.new
new_role["movie_id"] = dak["id"]
new_role["actor_id"] = a_e["id"]
new_role["character_name"] = "Harvey Dent"
new_role.save

new_role= Role.new
new_role["movie_id"] = dak["id"]
new_role["actor_id"] = m_g["id"]
new_role["character_name"] = "Rachel Dawes"
new_role.save

#3rd movie

new_role= Role.new
new_role["movie_id"] = dakrise["id"]
new_role["actor_id"] = c_b["id"]
new_role["character_name"] = "Bruce Wayne"
new_role.save

new_role= Role.new
new_role["movie_id"] = dakrise["id"]
new_role["actor_id"] = g_old["id"]
new_role["character_name"] = "Commissioner Gordon"
new_role.save

new_role= Role.new
new_role["movie_id"] = dakrise["id"]
new_role["actor_id"] = t_h["id"]
new_role["character_name"] = "Bane"
new_role.save

new_role= Role.new
new_role["movie_id"] = dakrise["id"]
new_role["actor_id"] = jgl["id"]
new_role["character_name"] = "John Blake"
new_role.save

new_role= Role.new
new_role["movie_id"] = dakrise["id"]
new_role["actor_id"] = a_h["id"]
new_role["character_name"] = "Selina Kyle"
new_role.save

# - Query the data and loop through the results to display output similar to the sample "report" below. (10 points)

#See number of loops 
n_movies=Movie.all.count
#puts "Number of movies: #{n_movies}"

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

#for zebra in n_movies
    #title = movie["title"]
    #year_release=movie["year_release"]
    #rated=movie["rated"]   
    #studio_id= movie["studio_id"]
    #puts "#{title} #{year_release} #{rated} #{studio_id}"
#end

# Query the movies data and loop through the results to display the movies output.
# TODO!

#See number of loops 
#n_roles=Role.all.count
#puts "Number of times on loop: #{n_roles}"


# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!






#LAST STEP: On terminal run  rails runner kmdb.rb


# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

# Generate models and tables, according to the domain model.
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!
