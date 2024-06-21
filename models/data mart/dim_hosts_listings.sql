{{

    config(materialized = 'incremental', unique_key = 'hotel_id')
}}

select * from {{ref("intrim_hosts_listings")}} a

{% if is_incremental() %}
  and a.date_col >= coalesce((select max(date_col) from {{ this }}), '1900-01-01')
{% endif %}