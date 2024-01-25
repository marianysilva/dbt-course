select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select listing_name
from AIRBNB.DEV.dim_listings_cleansed
where listing_name is null



      
    ) dbt_internal_test