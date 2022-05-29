# terraform-gitops
connect everything up to produce a gitops based deployment pipeline

# Goal
Produce a working project that shows how to address common issues with DevOps: 
    
   "How are we going to glue all this together?"

# Pre-requisites

Aim here is to be able to run things locally but PRIMARILY from the container used in github actions
## Local System Pre-requisites

* Docker & Docker-Compose, if you want to run the development environment locally - not necessarily recommended but you 'can' do it
    * TODO: maybe look at something else like Podman or a.n.other container runtime?

# Design Decisions


1. Initial login to Azure uses a Service Principal since doing this via a Managed Identity doesn't seem to be supported anywhere official... 
    - you MIGHT be able to create the AZ/Terraform backend (provider) and authenticate to this using a Managed identity in which case the whole 'az login' problem goes away but you STILL need the Managed Credential secrets to exist
1. Use a user assigned managed idendity (new) rather than service principal as these are easier to manage. As there will be multiple azure resources being managed in this way a user-assigned managed identity is the appropriate choice

# TODO:

## part 1
- [ ] Use system assigned managed identity to do this instead? More secure, doesn't involve key management and resource dies on destroy?
- [ ] AZ Cli based 'create a service principal' and 'azure-credentials' file which can be added to Github in a secure way to run actions against
- [ ] Look at doing this step in Python maybe as it's possible to add tests?
- [ ] Have github actions use a custom runner with all the pre-requisites already deployed on there
  * make sure there's a versions file which can maintain these as known values rather than always having to rely on 'main'
- [ ] add link to terraform-container builder for deployment todo: section here
- [ ] use terratest for testing terragrunt code
- [ ] use terragrunt for the actual deployment into azure
- [ ] use azure-config (settings) file in JSON to hold secrets securely
- [ ] use ansible for deployment of stuff onto the machine
- [ ] re-use moj static analysis container for deployments
- [ ] pull deployment (machine) params from a json based config file

## part 2
- [ ] have Azure based dashboards and reporting rather than having prom/grafana/loki etc.
- [ ] see if there's a use case for Grafana Mimir anywhere?
- [ ] include a database related backup/restore mechanism example

# Links 

<!--- might not do it this way going forward... -->
https://www.techielass.com/create-azure-credentials-for-use-in-github-actions/

## Pluralsight courses

https://app.pluralsight.com/course-player?courseId=4c277b8c-da79-4b43-bf0f-3079a3f275ca#:~:text=Implementing%20Managed%20Identities%20for%20Microsoft%20Azure%20Resources

- Designing Identity Management for Microsoft Azure

- Designing Authentication and Authorization for Microsoft Azure

# Useful Azure github actions
- https://github.com/marketplace/actions/azure-cost-report-action
- https://github.com/marketplace/actions/terraform-init-azurerm-backend

FIXME:  https://github.com/marketplace/actions/azure-cli-action