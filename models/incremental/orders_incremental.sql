{{ config(
    materialized="incremental",
) }}

select * from {{ source('public', 'test50k') }} 

{% if is_incremental() %} 

where _ETL_LOADED_AT > (Select max(_ETL_LOADED_AT) from {{this}})

{% endif %}