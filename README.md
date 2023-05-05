
<p align="center"> <img src="https://user-images.githubusercontent.com/50652676/62349836-882fef80-b51e-11e9-99e3-7b974309c7e3.png" width="100" height="100"></p>


<h1 align="center">
    Terraform  GCP ServiceAccount
</h1>

<p align="center" style="font-size: 1.2rem;"> 
    Terraform module to create ServiceAccount resource on GCP.
     </p>

<p align="center">

<a href="https://www.terraform.io">
  <img src="https://img.shields.io/badge/Terraform-v1.1.7-green" alt="Terraform">
</a>
<a href="LICENSE.md">
  <img src="https://img.shields.io/badge/License-APACHE-blue.svg" alt="Licence">
</a>






## Prerequisites

This module has a few dependencies:

- [Terraform 1.x.x](https://learn.hashicorp.com/terraform/getting-started/install.html)
- [Go](https://golang.org/doc/install)







## Examples


**IMPORTANT:** Since the `master` branch used in `source` varies based on new modifications, we suggest that you use the release versions [here](https://github.com/slovink/terraform-gcp-serviceAccount/releases).


### Simple Example
Here is an example of how you can use this module in your inventory structure:
  ```hcl

module "service-account" {
  source = "../"

  name        = "test"
  environment = var.environment
  label_order = var.label_order

  service_account_enabled     = true
  project_id                  = ""
  service_account_key_enabled = true
  key_algorithm               = "KEY_ALG_RSA_2048"
  public_key_type             = "TYPE_X509_PEM_FILE"
  private_key_type            = "TYPE_GOOGLE_CREDENTIALS_FILE"
  members                     = []
}

  ```



## Feedback
If you come accross a bug or have any feedback, please log it in our [issue tracker](https://github.com/slovink/terraform-gcp-serviceAccount/issues), or feel free to drop us an email at [devops@slovink.com](mailto:devops@slovink.com).

If you have found it worth your time, go ahead and give us a ★ on [our GitHub](https://github.com/slovink/terraform-gcp-serviceAccount)!
