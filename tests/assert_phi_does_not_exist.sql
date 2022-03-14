select * from  {{ source('fantasy_football', 'PBP') }}
where (HOME_TEAM='PHI' OR AWAY_TEAM='PHI')