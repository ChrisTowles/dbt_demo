{{
    config(
        materialized='incremental',
        unique_key='id'
    )
}}

select * from {{ source('public', 'test50k') }}

{% if is_incremental() %}

where _ETL_LOADED_AT > (select max(_ETL_LOADED_AT) from {{this}})

{% endif %}
