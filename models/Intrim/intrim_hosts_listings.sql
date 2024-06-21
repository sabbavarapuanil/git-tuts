select 
    hosts.host_id as host_id,
    hosts.host_name as host_name,
    listings.name as hotel_name,
    listings.id as hotel_id
from {{ref('intrim_raw_hosts')}} hosts
inner join {{source('training','raw_listings')}} listings on hosts.host_id=listings.host_id