select *
from {{ ref('town_temps_with_name') }}
where STATE='NFL'