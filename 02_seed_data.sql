-- Genres Data
INSERT INTO Genres (genre_id, genre_name, description, created_date, is_active, target_audience) 
VALUES (1, 'Action', 'High-energy films with chase scenes and stunts', SYSDATE, 1, 'Young Adults');

INSERT INTO Genres (genre_id, genre_name, description, created_date, is_active, target_audience) 
VALUES (2, 'Drama', 'Character-driven stories with emotional themes', SYSDATE, 1, 'Adults');

INSERT INTO Genres (genre_id, genre_name, description, created_date, is_active, target_audience) 
VALUES (3, 'Comedy', 'Light-hearted entertainment with humor', SYSDATE, 1, 'All Ages');

INSERT INTO Genres (genre_id, genre_name, description, created_date, is_active, target_audience) 
VALUES (4, 'Science Fiction', 'Futuristic stories with advanced technology', SYSDATE, 1, 'Young Adults');

INSERT INTO Genres (genre_id, genre_name, description, created_date, is_active, target_audience) 
VALUES (5, 'Fantasy', 'Magical and supernatural elements', SYSDATE, 1, 'All Ages');

-- Production Companies Data
INSERT INTO Production_Companies (company_id, company_name, founding_date, headquarters, website, total_productions) 
VALUES (1, 'Universal Studios', TO_DATE('1912-04-30', 'YYYY-MM-DD'), 'Universal City, CA', 'www.universalstudios.com', 1000);

INSERT INTO Production_Companies (company_id, company_name, founding_date, headquarters, website, total_productions) 
VALUES (2, 'Warner Bros.', TO_DATE('1923-04-04', 'YYYY-MM-DD'), 'Burbank, CA', 'www.warnerbros.com', 900);

INSERT INTO Production_Companies (company_id, company_name, founding_date, headquarters, website, total_productions) 
VALUES (3, 'Netflix Studios', TO_DATE('1997-08-29', 'YYYY-MM-DD'), 'Los Gatos, CA', 'www.netflix.com', 500);

INSERT INTO Production_Companies (company_id, company_name, founding_date, headquarters, website, total_productions) 
VALUES (4, 'HBO', TO_DATE('1972-11-08', 'YYYY-MM-DD'), 'New York, NY', 'www.hbo.com', 300);

INSERT INTO Production_Companies (company_id, company_name, founding_date, headquarters, website, total_productions) 
VALUES (5, 'Paramount Pictures', TO_DATE('1912-05-08', 'YYYY-MM-DD'), 'Hollywood, CA', 'www.paramount.com', 800);

-- Directors Data
INSERT INTO Directors (director_id, first_name, last_name, birth_date, nationality, awards_count, start_year) 
VALUES (1, 'Christopher', 'Nolan', TO_DATE('1970-07-30', 'YYYY-MM-DD'), 'British', 11, 1998);

INSERT INTO Directors (director_id, first_name, last_name, birth_date, nationality, awards_count, start_year) 
VALUES (2, 'Ava', 'DuVernay', TO_DATE('1972-08-24', 'YYYY-MM-DD'), 'American', 8, 2006);

INSERT INTO Directors (director_id, first_name, last_name, birth_date, nationality, awards_count, start_year) 
VALUES (3, 'Martin', 'Scorsese', TO_DATE('1942-11-17', 'YYYY-MM-DD'), 'American', 20, 1967);

INSERT INTO Directors (director_id, first_name, last_name, birth_date, nationality, awards_count, start_year) 
VALUES (4, 'Kathryn', 'Bigelow', TO_DATE('1951-11-27', 'YYYY-MM-DD'), 'American', 9, 1978);

INSERT INTO Directors (director_id, first_name, last_name, birth_date, nationality, awards_count, start_year) 
VALUES (5, 'Bong', 'Joon-ho', TO_DATE('1969-09-14', 'YYYY-MM-DD'), 'South Korean', 15, 1994);

INSERT INTO Directors (director_id, first_name, last_name, birth_date, nationality, awards_count, start_year) 
VALUES (6, 'Quentin', 'Tarantino', TO_DATE('1963-03-27', 'YYYY-MM-DD'), 'American', 32, 1987);

INSERT INTO Directors (director_id, first_name, last_name, birth_date, nationality, awards_count, start_year) 
VALUES (7, 'Greta', 'Gerwig', TO_DATE('1983-08-04', 'YYYY-MM-DD'), 'American', 12, 2008);

INSERT INTO Directors (director_id, first_name, last_name, birth_date, nationality, awards_count, start_year) 
VALUES (8, 'Denis', 'Villeneuve', TO_DATE('1967-10-03', 'YYYY-MM-DD'), 'Canadian', 15, 1994);

INSERT INTO Directors (director_id, first_name, last_name, birth_date, nationality, awards_count, start_year) 
VALUES (9, 'Chloé', 'Zhao', TO_DATE('1982-03-31', 'YYYY-MM-DD'), 'Chinese', 10, 2010);

INSERT INTO Directors (director_id, first_name, last_name, birth_date, nationality, awards_count, start_year) 
VALUES (10, 'Jordan', 'Peele', TO_DATE('1979-02-21', 'YYYY-MM-DD'), 'American', 8, 2012);

-- Actors Data
INSERT INTO Actors (actor_id, first_name, last_name, birth_date, nationality, biography, awards_count) 
VALUES (1, 'Leonardo', 'DiCaprio', TO_DATE('1974-11-11', 'YYYY-MM-DD'), 'American', 'Award-winning actor known for dramatic roles', 56);

INSERT INTO Actors (actor_id, first_name, last_name, birth_date, nationality, biography, awards_count) 
VALUES (2, 'Meryl', 'Streep', TO_DATE('1949-06-22', 'YYYY-MM-DD'), 'American', 'Versatile actress with numerous accolades', 94);

INSERT INTO Actors (actor_id, first_name, last_name, birth_date, nationality, biography, awards_count) 
VALUES (3, 'Denzel', 'Washington', TO_DATE('1954-12-28', 'YYYY-MM-DD'), 'American', 'Acclaimed actor and director', 60);

INSERT INTO Actors (actor_id, first_name, last_name, birth_date, nationality, biography, awards_count) 
VALUES (4, 'Viola', 'Davis', TO_DATE('1965-08-11', 'YYYY-MM-DD'), 'American', 'Powerful dramatic actress', 71);

INSERT INTO Actors (actor_id, first_name, last_name, birth_date, nationality, biography, awards_count) 
VALUES (5, 'Tom', 'Hardy', TO_DATE('1977-09-15', 'YYYY-MM-DD'), 'British', 'Known for intense character portrayals', 24);

INSERT INTO Actors (actor_id, first_name, last_name, birth_date, nationality, biography, awards_count) 
VALUES (6, 'Cate', 'Blanchett', TO_DATE('1969-05-14', 'YYYY-MM-DD'), 'Australian', 'Versatile actress known for both stage and screen', 85);

INSERT INTO Actors (actor_id, first_name, last_name, birth_date, nationality, biography, awards_count) 
VALUES (7, 'Samuel L.', 'Jackson', TO_DATE('1948-12-21', 'YYYY-MM-DD'), 'American', 'Prolific actor with iconic roles', 45);

INSERT INTO Actors (actor_id, first_name, last_name, birth_date, nationality, biography, awards_count) 
VALUES (8, 'Margot', 'Robbie', TO_DATE('1990-07-02', 'YYYY-MM-DD'), 'Australian', 'Rising star known for diverse roles', 28);

INSERT INTO Actors (actor_id, first_name, last_name, birth_date, nationality, biography, awards_count) 
VALUES (9, 'Timothée', 'Chalamet', TO_DATE('1995-12-27', 'YYYY-MM-DD'), 'American', 'Young actor known for dramatic performances', 15);

INSERT INTO Actors (actor_id, first_name, last_name, birth_date, nationality, biography, awards_count) 
VALUES (10, 'Zendaya', 'Coleman', TO_DATE('1996-09-01', 'YYYY-MM-DD'), 'American', 'Multi-talented actress and performer', 22);

INSERT INTO Actors (actor_id, first_name, last_name, birth_date, nationality, biography, awards_count) 
VALUES (11, 'Jenna', 'Ortega', TO_DATE('2002-09-27', 'YYYY-MM-DD'), 'American', 'Rising star known for horror and drama roles', 5);

-- Movies Data
INSERT INTO Movies (movie_id, title, release_date, duration_minutes, genre_id, director_id, company_id, budget, box_office, rating) 
VALUES (1, 'Inception', TO_DATE('2010-07-16', 'YYYY-MM-DD'), 148, 4, 1, 2, 160000000, 836800000, '14A');

INSERT INTO Movies (movie_id, title, release_date, duration_minutes, genre_id, director_id, company_id, budget, box_office, rating) 
VALUES (2, 'The Post', TO_DATE('2017-12-22', 'YYYY-MM-DD'), 116, 2, 3, 1, 50000000, 179000000, 'PG');

INSERT INTO Movies (movie_id, title, release_date, duration_minutes, genre_id, director_id, company_id, budget, box_office, rating) 
VALUES (3, 'Training Day', TO_DATE('2001-10-05', 'YYYY-MM-DD'), 122, 2, 4, 2, 45000000, 104900000, '18A');

INSERT INTO Movies (movie_id, title, release_date, duration_minutes, genre_id, director_id, company_id, budget, box_office, rating) 
VALUES (4, 'Parasite', TO_DATE('2019-05-30', 'YYYY-MM-DD'), 132, 2, 5, 5, 11400000, 258773645, '14A');

INSERT INTO Movies (movie_id, title, release_date, duration_minutes, genre_id, director_id, company_id, budget, box_office, rating) 
VALUES (5, 'The Devil Wears Prada', TO_DATE('2006-06-30', 'YYYY-MM-DD'), 109, 3, 2, 1, 35000000, 326700000, 'PG');

INSERT INTO Movies (movie_id, title, release_date, duration_minutes, genre_id, director_id, company_id, budget, box_office, rating) 
VALUES (6, 'Pulp Fiction', TO_DATE('1994-10-14', 'YYYY-MM-DD'), 154, 2, 6, 5, 8000000, 213928762, '18A');

INSERT INTO Movies (movie_id, title, release_date, duration_minutes, genre_id, director_id, company_id, budget, box_office, rating) 
VALUES (7, 'Little Women', TO_DATE('2019-12-25', 'YYYY-MM-DD'), 135, 2, 7, 1, 40000000, 218844555, 'PG');

INSERT INTO Movies (movie_id, title, release_date, duration_minutes, genre_id, director_id, company_id, budget, box_office, rating) 
VALUES (8, 'Dune', TO_DATE('2021-10-22', 'YYYY-MM-DD'), 155, 4, 8, 2, 165000000, 401847917, 'PG');

INSERT INTO Movies (movie_id, title, release_date, duration_minutes, genre_id, director_id, company_id, budget, box_office, rating) 
VALUES (9, 'Nomadland', TO_DATE('2021-02-19', 'YYYY-MM-DD'), 108, 2, 9, 3, 5000000, 39601466, 'PG');

INSERT INTO Movies (movie_id, title, release_date, duration_minutes, genre_id, director_id, company_id, budget, box_office, rating) 
VALUES (10, 'Get Out', TO_DATE('2017-02-24', 'YYYY-MM-DD'), 104, 4, 10, 1, 4500000, 255407969, '14A');

-- TV Shows Data
INSERT INTO TV_Shows (show_id, title, start_date, end_date, genre_id, company_id, total_seasons, status, rating) 
VALUES (1, 'Stranger Things', TO_DATE('2016-07-15', 'YYYY-MM-DD'), NULL, 4, 3, 4, 'Running', '14+');

INSERT INTO TV_Shows (show_id, title, start_date, end_date, genre_id, company_id, total_seasons, status, rating) 
VALUES (2, 'Game of Thrones', TO_DATE('2011-04-17', 'YYYY-MM-DD'), TO_DATE('2019-05-19', 'YYYY-MM-DD'), 5, 4, 8, 'Ended', '18+');

INSERT INTO TV_Shows (show_id, title, start_date, end_date, genre_id, company_id, total_seasons, status, rating) 
VALUES (3, 'The Office', TO_DATE('2005-03-24', 'YYYY-MM-DD'), TO_DATE('2013-05-16', 'YYYY-MM-DD'), 3, 1, 9, 'Ended', 'PG');

INSERT INTO TV_Shows (show_id, title, start_date, end_date, genre_id, company_id, total_seasons, status, rating) 
VALUES (4, 'Breaking Bad', TO_DATE('2008-01-20', 'YYYY-MM-DD'), TO_DATE('2013-09-29', 'YYYY-MM-DD'), 2, 3, 5, 'Ended', '18+');

INSERT INTO TV_Shows (show_id, title, start_date, end_date, genre_id, company_id, total_seasons, status, rating) 
VALUES (5, 'The Crown', TO_DATE('2016-11-04', 'YYYY-MM-DD'), NULL, 2, 3, 5, 'Running', '14+');

INSERT INTO TV_Shows (show_id, title, start_date, end_date, genre_id, company_id, total_seasons, status, rating) 
VALUES (6, 'The Mandalorian', TO_DATE('2019-11-12', 'YYYY-MM-DD'), NULL, 5, 3, 3, 'Running', '14+');

INSERT INTO TV_Shows (show_id, title, start_date, end_date, genre_id, company_id, total_seasons, status, rating) 
VALUES (7, 'Succession', TO_DATE('2018-06-03', 'YYYY-MM-DD'), TO_DATE('2023-05-28', 'YYYY-MM-DD'), 2, 4, 4, 'Ended', '18+');

INSERT INTO TV_Shows (show_id, title, start_date, end_date, genre_id, company_id, total_seasons, status, rating) 
VALUES (8, 'Ted Lasso', TO_DATE('2020-08-14', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD'), 3, 3, 3, 'Ended', '14+');

INSERT INTO TV_Shows (show_id, title, start_date, end_date, genre_id, company_id, total_seasons, status, rating) 
VALUES (9, 'The Last of Us', TO_DATE('2023-01-15', 'YYYY-MM-DD'), NULL, 2, 4, 1, 'Running', '18+');

INSERT INTO TV_Shows (show_id, title, start_date, end_date, genre_id, company_id, total_seasons, status, rating) 
VALUES (10, 'Wednesday', TO_DATE('2022-11-23', 'YYYY-MM-DD'), NULL, 5, 3, 1, 'Running', '14+');

-- Episodes Data
INSERT INTO Episodes (episode_id, show_id, title, season_number, episode_number, air_date, duration_minutes, director_id, rating) 
VALUES (1, 1, 'Chapter One: The Vanishing of Will Byers', 1, 1, TO_DATE('2016-07-15', 'YYYY-MM-DD'), 48, 2, 8.7);

INSERT INTO Episodes (episode_id, show_id, title, season_number, episode_number, air_date, duration_minutes, director_id, rating) 
VALUES (2, 2, 'Winter Is Coming', 1, 1, TO_DATE('2011-04-17', 'YYYY-MM-DD'), 62, 3, 9.1);

INSERT INTO Episodes (episode_id, show_id, title, season_number, episode_number, air_date, duration_minutes, director_id, rating) 
VALUES (3, 3, 'Pilot', 1, 1, TO_DATE('2005-03-24', 'YYYY-MM-DD'), 23, 4, 7.6);

INSERT INTO Episodes (episode_id, show_id, title, season_number, episode_number, air_date, duration_minutes, director_id, rating) 
VALUES (4, 4, 'Pilot', 1, 1, TO_DATE('2008-01-20', 'YYYY-MM-DD'), 58, 5, 9.0);

INSERT INTO Episodes (episode_id, show_id, title, season_number, episode_number, air_date, duration_minutes, director_id, rating) 
VALUES (5, 5, 'Wolferton Splash', 1, 1, TO_DATE('2016-11-04', 'YYYY-MM-DD'), 58, 1, 8.7);

INSERT INTO Episodes (episode_id, show_id, title, season_number, episode_number, air_date, duration_minutes, director_id, rating) 
VALUES (6, 6, 'Chapter 1: The Mandalorian', 1, 1, TO_DATE('2019-11-12', 'YYYY-MM-DD'), 39, 8, 8.8);

INSERT INTO Episodes (episode_id, show_id, title, season_number, episode_number, air_date, duration_minutes, director_id, rating) 
VALUES (7, 7, 'Succession', 1, 1, TO_DATE('2018-06-03', 'YYYY-MM-DD'), 62, 7, 8.9);

INSERT INTO Episodes (episode_id, show_id, title, season_number, episode_number, air_date, duration_minutes, director_id, rating) 
VALUES (8, 8, 'Pilot', 1, 1, TO_DATE('2020-08-14', 'YYYY-MM-DD'), 30, 6, 8.5);

INSERT INTO Episodes (episode_id, show_id, title, season_number, episode_number, air_date, duration_minutes, director_id, rating) 
VALUES (9, 9, 'When You''re Lost in the Darkness', 1, 1, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 81, 9, 9.3);

INSERT INTO Episodes (episode_id, show_id, title, season_number, episode_number, air_date, duration_minutes, director_id, rating) 
VALUES (10, 10, 'Wednesday''s Child Is Full of Woe', 1, 1, TO_DATE('2022-11-23', 'YYYY-MM-DD'), 47, 10, 8.2);

-- Movie_Actor Data
INSERT INTO Movie_Actor (movie_id, actor_id, character_name, is_lead_role, salary) 
VALUES (1, 1, 'Dom Cobb', 1, 20000000);

INSERT INTO Movie_Actor (movie_id, actor_id, character_name, is_lead_role, salary) 
VALUES (1, 5, 'Eames', 0, 7000000);

INSERT INTO Movie_Actor (movie_id, actor_id, character_name, is_lead_role, salary) 
VALUES (2, 2, 'Kay Graham', 1, 15000000);

INSERT INTO Movie_Actor (movie_id, actor_id, character_name, is_lead_role, salary) 
VALUES (3, 3, 'Alonzo Harris', 1, 12000000);

INSERT INTO Movie_Actor (movie_id, actor_id, character_name, is_lead_role, salary) 
VALUES (4, 4, 'Special Appearance', 0, 5000000);

INSERT INTO Movie_Actor (movie_id, actor_id, character_name, is_lead_role, salary) 
VALUES (6, 7, 'Jules Winnfield', 1, 1000000);

INSERT INTO Movie_Actor (movie_id, actor_id, character_name, is_lead_role, salary) 
VALUES (7, 8, 'Amy March', 1, 8000000);

INSERT INTO Movie_Actor (movie_id, actor_id, character_name, is_lead_role, salary) 
VALUES (8, 9, 'Paul Atreides', 1, 12000000);

INSERT INTO Movie_Actor (movie_id, actor_id, character_name, is_lead_role, salary) 
VALUES (9, 6, 'Fern', 1, 5000000);

INSERT INTO Movie_Actor (movie_id, actor_id, character_name, is_lead_role, salary) 
VALUES (10, 10, 'Chris Washington', 1, 500000);

-- Show_Actor Data
INSERT INTO Show_Actor (show_id, actor_id, character_name, is_main_cast, salary_per_episode) 
VALUES (1, 5, 'Guest Role', 0, 100000);

INSERT INTO Show_Actor (show_id, actor_id, character_name, is_main_cast, salary_per_episode) 
VALUES (2, 4, 'Regular Character', 1, 150000);

INSERT INTO Show_Actor (show_id, actor_id, character_name, is_main_cast, salary_per_episode) 
VALUES (3, 2, 'Guest Star', 0, 100000);

INSERT INTO Show_Actor (show_id, actor_id, character_name, is_main_cast, salary_per_episode) 
VALUES (4, 3, 'Guest Role', 0, 200000);

INSERT INTO Show_Actor (show_id, actor_id, character_name, is_main_cast, salary_per_episode) 
VALUES (5, 1, 'Special Appearance', 0, 250000);

INSERT INTO Show_Actor (show_id, actor_id, character_name, is_main_cast, salary_per_episode) 
VALUES (6, 7, 'Moff Gideon', 1, 200000);

INSERT INTO Show_Actor (show_id, actor_id, character_name, is_main_cast, salary_per_episode) 
VALUES (7, 6, 'Guest Star', 0, 350000);

INSERT INTO Show_Actor (show_id, actor_id, character_name, is_main_cast, salary_per_episode) 
VALUES (8, 8, 'Guest Role', 0, 150000);

INSERT INTO Show_Actor (show_id, actor_id, character_name, is_main_cast, salary_per_episode) 
VALUES (9, 9, 'Guest Appearance', 0, 300000);

INSERT INTO Show_Actor (show_id, actor_id, character_name, is_main_cast, salary_per_episode) 
VALUES (10, 11, 'Wednesday Addams', 1, 250000);

-- Actor_Season Data
INSERT INTO Actor_Season (show_id, actor_id, season_number) 
VALUES (1, 5, 4);

INSERT INTO Actor_Season (show_id, actor_id, season_number) 
VALUES (2, 4, 1);

INSERT INTO Actor_Season (show_id, actor_id, season_number) 
VALUES (2, 4, 2);

INSERT INTO Actor_Season (show_id, actor_id, season_number) 
VALUES (2, 4, 3);

INSERT INTO Actor_Season (show_id, actor_id, season_number) 
VALUES (3, 2, 7);

INSERT INTO Actor_Season (show_id, actor_id, season_number) 
VALUES (4, 3, 5);

INSERT INTO Actor_Season (show_id, actor_id, season_number) 
VALUES (5, 1, 3);

INSERT INTO Actor_Season (show_id, actor_id, season_number) 
VALUES (6, 7, 2);

INSERT INTO Actor_Season (show_id, actor_id, season_number) 
VALUES (6, 7, 3);

INSERT INTO Actor_Season (show_id, actor_id, season_number) 
VALUES (7, 6, 4);

INSERT INTO Actor_Season (show_id, actor_id, season_number) 
VALUES (8, 8, 2);

INSERT INTO Actor_Season (show_id, actor_id, season_number) 
VALUES (9, 9, 1);

INSERT INTO Actor_Season (show_id, actor_id, season_number) 
VALUES (10, 10, 1);

-- Reviews Data
INSERT INTO Reviews (review_id, content_type, content_id, rating, review_text, reviewer_name, review_date) 
VALUES (1, 'Movie', 1, 9.0, 'A mind-bending masterpiece that challenges reality.', 'MovieCritic123', SYSDATE - 10);

INSERT INTO Reviews (review_id, content_type, content_id, rating, review_text, reviewer_name, review_date) 
VALUES (2, 'TV Show', 1, 8.5, 'Nostalgic and thrilling series that keeps you on the edge.', 'SeriesLover', SYSDATE - 8);

INSERT INTO Reviews (review_id, content_type, content_id, rating, review_text, reviewer_name, review_date) 
VALUES (3, 'Movie', 4, 9.5, 'A perfect blend of social commentary and dark humor.', 'FilmAnalyst', SYSDATE - 5);

INSERT INTO Reviews (review_id, content_type, content_id, rating, review_text, reviewer_name, review_date) 
VALUES (4, 'TV Show', 2, 9.3, 'Epic storytelling with amazing character development.', 'TVFanatic', SYSDATE - 3);

INSERT INTO Reviews (review_id, content_type, content_id, rating, review_text, reviewer_name, review_date) 
VALUES (5, 'Movie', 2, 8.0, 'Powerful portrayal of journalism and freedom of press.', 'CinemaExpert', SYSDATE - 1);

INSERT INTO Reviews (review_id, content_type, content_id, rating, review_text, reviewer_name, review_date) 
VALUES (6, 'Movie', 6, 9.4, 'A groundbreaking classic that redefined cinema.', 'CinemaVeteran', SYSDATE - 15);

INSERT INTO Reviews (review_id, content_type, content_id, rating, review_text, reviewer_name, review_date) 
VALUES (7, 'TV Show', 6, 8.9, 'Fresh take on the Star Wars universe.', 'SciFiFanatic', SYSDATE - 12);

INSERT INTO Reviews (review_id, content_type, content_id, rating, review_text, reviewer_name, review_date) 
VALUES (8, 'Movie', 8, 8.8, 'Visually stunning adaptation of the classic novel.', 'FilmScholar', SYSDATE - 9);

INSERT INTO Reviews (review_id, content_type, content_id, rating, review_text, reviewer_name, review_date) 
VALUES (9, 'TV Show', 9, 9.2, 'Masterful adaptation of the video game.', 'SeriesEnthusiast', SYSDATE - 6);

INSERT INTO Reviews (review_id, content_type, content_id, rating, review_text, reviewer_name, review_date) 
VALUES (10, 'Movie', 10, 9.0, 'Revolutionary horror film with social commentary.', 'HorrorBuff', SYSDATE - 4);

