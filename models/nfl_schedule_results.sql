select GAME_ID,WEEK, GAMEDAY, WEEKDAY, AWAY_TEAM,HOME_TEAM  from {{source('fantasy_football', 'SCHEDULE')}}
