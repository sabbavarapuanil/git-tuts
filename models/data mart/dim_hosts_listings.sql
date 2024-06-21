{{

    config(materialized = 'incremental', unique_key = 'hotel_id')
}}

select * from {{ref("intrim_hosts_listings")}} a

{% if is_incremental() %}
  and a.date_col >= coalesce((select max(date_col) from {{ this }}), '1900-01-01')
{% endif %}


scd
type2

{% snapshot snapshot_name %}

{{
   config(
       target_database='target_database',
       target_schema='target_schema',
       unique_key='unique_key',

       strategy='strategy',
       updated_at='updated_at',
   )
}}


{% endsnapshot %}

view
table
empheral
incremental 
snapshot -- slowly changing dimension -- interview , type of dimension 

dimension -- 
fact -- 
slowly changing dimension


fact is used to hold the measures and relations to dimensions.
dimension is used to hold the description about the measures. 


customer - product (key board, mouse)- 5 - 100$ , 50 $ 

dimension 
dim_customer -- customer_id, customer_name, customer_address, phone_number

dim_product -- product_id, product_name, product_type, product_price

fact - customer_id, product_id, qty, price, revenue 
        123, laptop, 5, 100$, 500$
        123, mouse, 5, 50$, 250$

slowly dimension concept - type1, type2, type3  
