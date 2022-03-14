select * from  {{ source('fantasy_football', 'PBP') }}
where (HOME_TEAM='PHIX' OR AWAY_TEAM='PHIX')