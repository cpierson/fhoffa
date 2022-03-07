{{config(materialized='table')}}

select a.ZIP_CODE, b.PRIMARY_CITY, b.STATE, b.COUNTY, a.DATE_OF_TEMP, a.MAX_TEMP, a.MIN_TEMP,a.PRECIPITATION_INCHES
from {{ ref('town_temps') }} a
join {{ ref('zip_code_mapping') }} b
on a.ZIP_CODE=TO_VARCHAR(b.ZIP)

