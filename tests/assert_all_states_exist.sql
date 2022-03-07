{{ config({
    "severity": "warn"
    })
}}


with states_a as (
    select distinct(STATE) from {{ ref('zip_code_mapping')}} 
), states_b as (
    select distinct(STATE) from {{ ref('town_temps_with_name') }}
)
select STATE from states_a where STATE not in (select STATE from states_b)
