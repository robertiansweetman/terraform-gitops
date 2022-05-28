# terraform-gitops
connect everything up to produce a gitops based deployment pipeline

# Goal
Produce a working project that shows how to address common issues with DevOps and one way of gluing it all together

# TODO:

## part 1
* Powershell based 'create a service principal' and 'azure-credentials' file which can be added to Github in a secure way to run actions against
* Have github actions use a custom runner with all the pre-requisites already deployed on there
  * make sure there's a versions file which can maintain these as known values rather than always having to rely on 'main'
* add link to terraform-container builder for deployment todo: section here
* use terratest for testing terragrunt code
* use terragrunt for the actual deployment into azure
* use azure-config (settings) file in JSON to hold secrets securely
* use ansible for deployment of stuff onto the machine
* re-use moj static analysis container for deployments
* pull deployment (machine) params from a json based config file

## part 2
* have Azure based dashboards and reporting rather than having prom/grafana/loki etc.
* see if there's a use case for Grafana Mimir anywhere?
* include a database related backup/restore mechanism example

# Links 

https://www.techielass.com/create-azure-credentials-for-use-in-github-actions/
