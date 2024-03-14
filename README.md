# common-infrastructure

This repo holds the code for the common infrastructure Terraform

This code will create the following services

ECR
Route53
VPC

Terraform code can be found in the .tf folder in the root of the repo

Pre-Req

To use this code, you need a fresh AWS Account, create an s3 bucket in the account and append onto it the environment name i.e. test/staging/live (24-marketing-build is default), along with an IAM user with the IAM Policy found in the policy.json file in this repo.

Create a new repo and a folder called .github/workflows - in there copy the three files template-pipeline-plan.yml, template-pipeline-apply.yml, template-pipeline-destroy.yml file from the root of this repo.

Create secrets in the new repo called AWS_ACCOUNT_ID, AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, TF_VAR_region (if different from eu-west-1) and TF_VAR_cluster_bucket_suffix

For the pipeline to run, you also need to supply a Personal Access Token what allows read/write to the repo you have created, it also needs access to Workflows if its a new style token

The above Token needs to be added to Github actions secrets as GIT_TOKEN.

To Allow Full configuration for a separate customer, there are the following Variables that can be added

AWS_REGION - Add custom region to this secret
BACKEND_BUCKET - Add customer name to the bucket
BACKEND_KEY - This is for having multiple customers in one aws account, the key is the location of the terraform state file in the above bucket
TF_VAR_CLUSTER_KEY - Set this value to the same as above if not default

Populate these secrets with the values of your new aws account.

*Triggers*

The Workflows trigger on branch based actions.

A terraform Plan triggers on a push action of any branch

A terraform Apply triggers on a merge of any branch to main

A terraform Destroy triggers on a push of a branch called "destroy" (Do not merge this branch just delete once destroy is complete)
