select 
    id as host_id,
    lower(name) as host_name,
    is_superhost as is_superhost
 from {{source('training','raw_host')}}
