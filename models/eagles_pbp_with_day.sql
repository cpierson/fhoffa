select pbp.GAME_ID, pbp.POSTEAM, pbp.PLAY_TYPE, pbp.QTR, pbp.DOWN, sched.GAMEDAY, 'HI JON' as hij
from {{ref('eagles_pbp')}} as pbp JOIN {{ref('nfl_schedule_results')}} as sched
ON pbp.GAME_ID = sched.GAME_ID