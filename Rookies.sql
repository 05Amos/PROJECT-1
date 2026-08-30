CREATE DATABASE Players;

CREATE TABLE player_stats (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(100) NOT NULL,
    team VARCHAR(50) NOT NULL,
    games_played INT NOT NULL,
    minutes_played INT NOT NULL,
    field_goal_percentage DECIMAL(5, 2) NOT NULL,
    three_point_percentage DECIMAL(5, 2) NOT NULL,
    free_throw_percentage DECIMAL(5, 2) NOT NULL,
    total_rebounds INT NOT NULL,
    assists INT NOT NULL,
    steals INT NOT NULL,
    blocks INT NOT NULL,
    turnovers INT NOT NULL,
    total_points INT NOT NULL
);
Select player_name, total_points  from player_stats  ORDER BY total_points DESC;
Select player_name, total_points, games_played, (total_points / games_played) AS points_per_game from player_stats ORDER BY points_per_game DESC;
Select player_name, total_rebounds, games_played, (total_rebounds / games_played) AS rebounds_per_game from player_stats ORDER BY rebounds_per_game DESC;
Select player_name, assists, games_played, (assists / games_played) AS assists_per_game from player_stats ORDER BY assists_per_game DESC;
Select player_name, steals, games_played, (steals / games_played) AS steals_per_game from player_stats ORDER BY steals_per_game DESC;
Select player_name, blocks, games_played, (blocks / games_played) AS blocks_per_game from player_stats ORDER BY blocks_per_game DESC;
Select player_name, turnovers, games_played, (turnovers / games_played) AS turnovers_per_game from player_stats ORDER BY turnovers_per_game DESC;
Select player_name, field_goal_percentage, three_point_percentage, free_throw_percentage from player_stats ORDER BY field_goal_percentage DESC;
Select player_name, (total_points / games_played) AS points_per_game,  CASE WHEN (total_points / games_played) >= 25 THEN 'ELite scorer' WHEN (total_points / games_played) >= 20 THEN 'High-Level' WHEN (total_points / games_played) >= 15 THEN 'Average Scorer' ELSE 'Below Average' END AS scoring_category From player_stats;