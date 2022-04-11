# UseCases
Example Use Case and Dataset repository

## UseCase service design
https://teradatacloud.atlassian.net/wiki/spaces/CLDI/pages/1841004633/UseCase+service+High+Level+System+Design

## History  
Currently the use cases are stored in several different locations
1. Write up and user facing documentation - Public Github
    https://github.com/Teradata/product-help/tree/master/UseCases
2. Actual data in csv or json or parquet files - S3 buckets
    https://td-usgs-public.s3.amazonaws.com/
    https://trial-datasets.s3.amazonaws.com/
    /s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data
3. Trials sample data - provisioning code 
    https://github.td.teradata.com/teradata-managed-cloud/icaws-eco-sync/tree/master/packages/trialsdata
4. List of use cases to drive the Trials UI - Teradata.com
    https://www.teradata.com/product-help/UseCases/use_cases.json
5. Antares sample data - deployed with the application
    https://gitlab.teracloud.ninja/teracloud/saas-services/applications/janus/-/tree/master/apps/janus/src/assets/sample_data

## Proposed Solution    
Create a centralized public github.com repository that is used to house the use cases and datasets.
Provide a structure for developing use cases and datasets that can be used by the ui/ux team to display the
use cases to the Antares an Vantage users.
Leverage the use cases and dataset scripts in this repo to automate as much as possible the loading and
creating of the objects.

## UseCase
A use case would consist of a README.md file that is a markdown of all of the user run queries to execute the
use case scenarios. The dataset that the use case relies upon will be recognized in two ways.
1. In the readme there will be a new code section called `td-dataset` this will be leverage in the fron end to
display the load widget in markdown properly
2. In the use-cases.json the `dataset` attribute will reference the dataset that is needed for the use case


### Dataset
A dataset will contain a README.md for documentation but the definition of the dataset will be in a scripts.json
definition file or a scripts folder. `tdb` Convention or configuration is still an outstanding question.
We use the `scripts.json` file to determine the order that the scripts will be run in.
No matter what there will be a scripts folder which will contain the sql scripts neccesary to load the data into the database. There will be an optional (based on space considerations) `data` folder that will contain the actual data needed for the dataset. The intention is that these data files will be published to an S3 bucket and that the script scripts will reference the S3 location and not this repository.



## Example APIS for the service to load the datasets for a use case
### POST /accounts/{account_id}/use-case-dataset-job
BODY ->
```  
    {
        "data_set_name" : "ExampleDataSet",
        "parameters": {
                "user": "vijay",
                "password" : "SuperMan007"
        }
    }
```
RESPONSE ->
``` 
    {
        use-case-data-set-job-id : 1234567
    }
```
### GET /accounts/{account_id}/use-case-dataset-job/{use-case-dataset-job-id}
RESPONSE ->
```    
    {
        "data_set_name" : "ExampleDataSet",
        script_status: [
            {"1_create_example_user.sql": DONE},
            {"2_create_foreign_tables.sql": IN_PROGRESS},
            {"3_create_views.sql": NOT_STARTED}
        ]
    }
```
### GET /accounts/{account_id}/use-case-dataset-job/{use-case-dataset-job-id}
RESPONSE ->
```    
    {
        "data_set_name" : "ExampleDataSet",
        script_status: [
            {"1_create_example_user.sql": DONE},
        {"2_create_foreign_tables.sql": FAILED, message: "VIJAY Broke it"},
            {"3_create_views.sql": NOT_STARTED}
        ]
    }
```
### Optional
### DELETE /accounts/{account_id}/use-case-dataset-job/{use-case-dataset-job-id}

Or after a period of time the status is deleted
### QUESTIONS:
    1. What happens if the DELETE is called during execution
    2. How do we handle Failed conditions

Life cycle documentation for the use-case-dataset-job

### Future enhancement:
Could we ever use the public datasets in AWS
https://registry.opendata.aws/






