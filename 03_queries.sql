-- Movie Profitability Analysis
SELECT 
    m.title,
    g.genre_name,
    m.budget,
    m.box_office,
    (m.box_office - m.budget) as profit,
    ROUND(((m.box_office - m.budget) / m.budget * 100), 2) as roi_percentage,
    d.first_name || ' ' || d.last_name as director_name,
    pc.company_name
FROM Movies m
JOIN Genres g ON m.genre_id = g.genre_id
JOIN Directors d ON m.director_id = d.director_id
JOIN Production_Companies pc ON m.company_id = pc.company_id
WHERE m.box_office > 0
ORDER BY roi_percentage DESC;


-- Actor Career Summary
SELECT 
    a.first_name || ' ' || a.last_name as actor_name,
    COUNT(DISTINCT ma.movie_id) as movie_count,
    COUNT(DISTINCT sa.show_id) as show_count,
    SUM(ma.salary) as total_movie_earnings,
    AVG(sa.salary_per_episode) as avg_episode_salary,
    a.awards_count
FROM Actors a
LEFT JOIN Movie_Actor ma ON a.actor_id = ma.actor_id
LEFT JOIN Show_Actor sa ON a.actor_id = sa.actor_id
GROUP BY a.actor_id, a.first_name, a.last_name, a.awards_count
HAVING COUNT(DISTINCT ma.movie_id) > 0 OR COUNT(DISTINCT sa.show_id) > 0;


-- TV Show Performance Analysis
SELECT 
    t.title,
    t.total_seasons,
    COUNT(e.episode_id) as total_episodes,
    AVG(e.rating) as avg_episode_rating,
    COUNT(DISTINCT sa.actor_id) as cast_size,
    g.genre_name,
    t.status,
    AVG(sa.salary_per_episode) as avg_actor_salary
FROM TV_Shows t
JOIN Episodes e ON t.show_id = e.show_id
JOIN Genres g ON t.genre_id = g.genre_id
LEFT JOIN Show_Actor sa ON t.show_id = sa.show_id
GROUP BY t.show_id, t.title, t.total_seasons, g.genre_name, t.status
ORDER BY avg_episode_rating DESC;


-- Director Success Metrics
SELECT 
    d.first_name || ' ' || d.last_name as director_name,
    COUNT(DISTINCT m.movie_id) as movies_directed,
    COUNT(DISTINCT e.episode_id) as episodes_directed,
    AVG(m.box_office) as avg_box_office,
    SUM(m.box_office) as total_box_office,
    d.awards_count,
    AVG(e.rating) as avg_episode_rating
FROM Directors d
LEFT JOIN Movies m ON d.director_id = m.director_id
LEFT JOIN Episodes e ON d.director_id = e.director_id
GROUP BY d.director_id, d.first_name, d.last_name, d.awards_count
HAVING COUNT(DISTINCT m.movie_id) > 0 OR COUNT(DISTINCT e.episode_id) > 0;


-- Content Review Analysis
SELECT 
    CASE 
        WHEN r.content_type = 'Movie' THEN m.title
        ELSE t.title
    END as content_title,
    r.content_type,
    AVG(r.rating) as avg_rating,
    COUNT(r.review_id) as review_count,
    MIN(r.rating) as lowest_rating,
    MAX(r.rating) as highest_rating,
    g.genre_name
FROM Reviews r
LEFT JOIN Movies m ON r.content_id = m.movie_id AND r.content_type = 'Movie'
LEFT JOIN TV_Shows t ON r.content_id = t.show_id AND r.content_type = 'TV Show'
LEFT JOIN Genres g ON (m.genre_id = g.genre_id OR t.genre_id = g.genre_id)
GROUP BY 
    CASE 
        WHEN r.content_type = 'Movie' THEN m.title
        ELSE t.title
    END,
    r.content_type,
    g.genre_name
ORDER BY avg_rating DESC;