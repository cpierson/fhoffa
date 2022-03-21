select * from  {{ source('fantasy_football', 'PBP') }}
where (HOME_TEAM='ddd' OR AWAY_TEAM='ddd')