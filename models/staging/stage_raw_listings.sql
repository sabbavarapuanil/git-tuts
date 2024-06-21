{{config(materialized = 'table')}}

select 
id hotel_id,
listing_url hotel_website,
lower(name) hotel_name,
host_id 
 from {{source('training','raw_listings')}}






