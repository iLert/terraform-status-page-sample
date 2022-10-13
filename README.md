# Using iLert terraform provider to create a status page

This example is related to [our Terraform blog post](https://engineering.ilert.com/saac-how-to-build-status-pages-as-code-with-terraform/)

### Usage

```sh
# set your iLert credentials via environment variables
export ILERT_ORGANIZATION=...
export ILERT_API_TOKEN=...
# export ILERT_USERNAME=...
# export ILERT_PASSWORD=...
#
# ... or create the `terraform.tfvars` file with variables
#
# organization=...
# api_token=...
# # username=...
# # password=...
#

terraform init
terraform apply
```

### Links

- https://registry.terraform.io/providers/iLert/ilert/latest/docs
- https://registry.terraform.io/providers/grafana/grafana/latest/docs
