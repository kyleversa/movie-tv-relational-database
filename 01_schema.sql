
-- Create Genres table
CREATE TABLE Genres (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR2(50) NOT NULL UNIQUE,
    description VARCHAR2(4000), 
    created_date DATE DEFAULT SYSDATE, 
    is_active NUMBER(1) DEFAULT 1, 
    target_audience VARCHAR2(50)
);


-- Create Production Companies table
CREATE TABLE Production_Companies (
    company_id INT PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL UNIQUE,
    founding_date DATE,
    headquarters VARCHAR(100),
    website VARCHAR(200),
    total_productions INT DEFAULT 0
);

-- Create Directors table
CREATE TABLE Directors (
    director_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    nationality VARCHAR(50),
    awards_count INT DEFAULT 0,
    start_year INT CHECK (start_year >= 1900)
);

-- Create Actors table
CREATE TABLE Actors (
    actor_id INT PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL, 
    last_name VARCHAR2(50) NOT NULL, 
    birth_date DATE,
    nationality VARCHAR2(50),
    biography VARCHAR2(4000), 
    awards_count INT DEFAULT 0
);

-- Create Movies table
CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR2(200) NOT NULL,
    release_date DATE,
    duration_minutes INT CHECK (duration_minutes > 0),
    genre_id INT REFERENCES Genres(genre_id) ON DELETE CASCADE,
    director_id INT REFERENCES Directors(director_id) ON DELETE SET NULL,
    company_id INT REFERENCES Production_Companies(company_id) ON DELETE SET NULL,
    budget NUMBER(15,2),
    box_office NUMBER(15,2), 
    rating VARCHAR2(10) CHECK (rating IN ('G', 'PG', '14A', '18A', 'R', 'A')),
    CONSTRAINT movie_release_check CHECK (release_date >= TO_DATE('1900-01-01', 'YYYY-MM-DD'))
);


-- Create TV Shows table
CREATE TABLE TV_Shows (
    show_id INT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    start_date DATE,
    end_date DATE,
    genre_id INT REFERENCES Genres(genre_id) ON DELETE CASCADE,
    company_id INT REFERENCES Production_Companies(company_id) ON DELETE SET NULL,
    total_seasons INT DEFAULT 1,
    status VARCHAR(20) CHECK (status IN ('Running', 'Ended', 'Cancelled', 'On Hiatus')),
    rating VARCHAR(10) CHECK (rating IN ('C', 'C8', 'G', 'PG', '14+', '18+')),
    CONSTRAINT show_dates_check CHECK (end_date >= start_date)
);

-- Create Episodes table
CREATE TABLE Episodes (
    episode_id INT PRIMARY KEY,
    show_id INT REFERENCES TV_Shows(show_id) ON DELETE CASCADE,
    title VARCHAR(200) NOT NULL,
    season_number INT CHECK (season_number > 0),
    episode_number INT CHECK (episode_number > 0),
    air_date DATE,
    duration_minutes INT CHECK (duration_minutes > 0),
    director_id INT REFERENCES Directors(director_id) ON DELETE SET NULL,
    rating DECIMAL(3,1) CHECK (rating >= 0 AND rating <= 10),
    UNIQUE(show_id, season_number, episode_number)
);

-- Create Movie_Actor bridge table
CREATE TABLE Movie_Actor (
    movie_id INT REFERENCES Movies(movie_id) ON DELETE CASCADE,
    actor_id INT REFERENCES Actors(actor_id) ON DELETE CASCADE,
    character_name VARCHAR2(100),
    is_lead_role NUMBER(1) DEFAULT 0, 
    salary NUMBER(15,2), 
    PRIMARY KEY (movie_id, actor_id)
);

-- Create Show_Actor bridge table
CREATE TABLE Show_Actor (
    show_id INT REFERENCES TV_Shows(show_id) ON DELETE CASCADE,
    actor_id INT REFERENCES Actors(actor_id) ON DELETE CASCADE,
    character_name VARCHAR2(100),
    is_main_cast NUMBER(1) DEFAULT 0, 
    salary_per_episode NUMBER(15,2),
    PRIMARY KEY (show_id, actor_id)
);

-- Create Actor_Season bridge table
CREATE TABLE Actor_Season (
    show_id INT REFERENCES TV_Shows(show_id) ON DELETE CASCADE,
    actor_id INT REFERENCES Actors(actor_id) ON DELETE CASCADE,
    season_number INT CHECK (season_number > 0),
    PRIMARY KEY (show_id, actor_id, season_number)
);

-- Create Reviews table
CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    content_type VARCHAR2(10) CHECK (content_type IN ('Movie', 'TV Show')),
    content_id INT, 
    rating NUMBER(3,1) CHECK (rating >= 0 AND rating <= 10),
    review_text VARCHAR2(4000), 
    review_date DATE DEFAULT SYSDATE,
    reviewer_name VARCHAR2(100)
);

