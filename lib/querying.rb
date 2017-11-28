def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year from books WHERE series_id = 1"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT a.name, sg.name from authors a
  INNER JOIN series s ON a.id = s.author_id
  INNER JOIN subgenres sg ON s.subgenre_id = sg.id"
end

def select_series_title_with_most_human_characters
  "SELECT s.title FROM series s
  LEFT JOIN characters c ON s.id = c.series_id
                         AND c.species = 'human'
  GROUP BY s.title
  ORDER BY COUNT(*) DESC
  LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT name, COUNT(*) FROM characters c
  LEFT JOIN character_books cb ON c.id = cb.character_id
  GROUP BY cb.character_id
  ORDER BY COUNT(*) DESC, name
  "
end
