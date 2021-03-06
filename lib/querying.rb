def select_books_titles_and_years_in_first_series_order_by_year
  "Write your SQL query here"
  "SELECT books.title, books.year FROM books INNER JOIN series WHERE books.series_id = series.id AND series.id = 1;"
end

def select_name_and_motto_of_char_with_longest_motto
  "Write your SQL query here"
  "SELECT characters.name, characters.motto FROM characters GROUP BY characters.name HAVING COUNT(characters.motto) ORDER BY characters.name DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "Write your SQL query here"
  "SELECT characters.species, COUNT(characters.species) FROM characters GROUP BY characters.species ORDER BY COUNT(characters.species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "Write your SQL query here"
  "SELECT authors.name, subgenres.name FROM authors INNER JOIN series ON authors.id = series.author_id INNER JOIN subgenres ON series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"
  "SELECT series.title FROM characters INNER JOIN authors ON characters.author_id = authors.id INNER JOIN series ON authors.id = series.author_id GROUP BY characters.species ORDER BY COUNT(characters.species) DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
  "SELECT characters.name, COUNT(*) as book_count FROM character_books JOIN characters ON character_books.character_id = characters.id GROUP BY characters.name ORDER BY book_count DESC, characters.name "
end
