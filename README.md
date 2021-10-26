# k3s-rancher-server
Minimum infrastructure for Rancher Server

### Configure Remote Backend

1. Create s3 bucket and dyanmodb table. 

One applied, a local backend will be established. you will then need to configre the terraform block with the `s3` backend parameter that references the previously created resources. You will be prompted to migrate your local backend to the new s3 bucket for state management. 

