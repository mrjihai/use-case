# Teradata Datasets

Here are some locations for Teradata public and semi-public datasets

## Public

https://td-usgs-public.s3.amazonaws.com/

https://trial-datasets.s3.amazonaws.com/

## Semi Public - Antares users all have access

https://alpha-data-store-td.s3.amazonaws.com/


Here are some links for reference

* https://quickstarts.teradata.com/docs/17.10/nos.html
* https://docs.teradata.com/r/76g1CuvvQlYBjb2WPIuk3g/U0T3~msWxz~ME53N_U9D8Q
* https://docs.teradata.com/r/76g1CuvvQlYBjb2WPIuk3g/59pjsq8Zc1Aj1VKlJr_OhA


## Assumptions
There is an assumption that there will be a default database that everyone will have access to in order to create
the dataset objects. Currently this is named `retail_sample_data` but the plan is to make it something a little
more generic. 
This means that the objects that are created in each dataset need to be named carefully so that there are no
conflicts.  So the convention needs to be to add a prefix to the table names for example in the EVCarBattery dataset the
prefix is `ev_`. This means that all objecst in that dataset are prefixed with `ev_`. This convention should allow for
multipls datasets to coexist in the same default database.
