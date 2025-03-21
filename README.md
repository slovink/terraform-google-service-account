<p align="center"> <img src="https://user-images.githubusercontent.com/50652676/62349836-882fef80-b51e-11e9-99e3-7b974309c7e3.png" width="100" height="100"></p>


<h1 align="center">
    Terraform google service-account
</h1>

<p align="center" style="font-size: 1.2rem;">
    Terraform module to create service-account resource on google.
     </p>

<p align="center">

<a href="https://www.terraform.io">
  <img src="https://img.shields.io/badge/Terraform-v1.7.4-green" alt="Terraform">
</a>
<a href="https://github.com/slovink/terraform-google-service-account/blob/main/LICENSE">
  <img src="https://img.shields.io/badge/License-APACHE-blue.svg" alt="Licence">
</a>

</p>
<p align="center">

<a href='https://www.facebook.com/Slovink.in=https://github.com/slovink/terraform-lables'>
  <img title="Share on Facebook" src="https://user-images.githubusercontent.com/50652676/62817743-4f64cb80-bb59-11e9-90c7-b057252ded50.png" />
</a>
<a href='https://www.linkedin.com/company/101534993/admin/feed/posts/=https://github.com/slovink/terraform-lables'>
  <img title="Share on LinkedIn" src="https://user-images.githubusercontent.com/50652676/62817742-4e339e80-bb59-11e9-87b9-a1f68cae1049.png" />
</a>

# Terraform-google-service-account
# Terraform Google Cloud Service Account Module

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Examples](#examples)
- [License](#license)
- [Author](#author)
- [Inputs](#inputs)
- [Outputs](#outputs)

## Introduction

This Terraform module creates a Google Cloud Service Account with configurable options. It is designed to be used in conjunction with other infrastructure modules.

## Usage
To use this module, you should have Terraform installed and configured for GCP. This module provides the necessary Terraform configuration for creating GCP resources, and you can customize the inputs as needed. Below is an example of how to use this module:
## Example: service-account
```hcl
module "service-account" {
  source           = "git::https://github.com/slovink/terraform-google-service-account.git?ref=v1.0.0"
  name             = "ops"
  environment      = "test"
  key_algorithm    = "KEY_ALG_RSA_2048"
  public_key_type  = "TYPE_X509_PEM_FILE"
  private_key_type = "TYPE_GOOGLE_CREDENTIALS_FILE"
  roles            = ["roles/iam.serviceAccountUser"]
}
```
This example demonstrates how to create various GCP resources using the provided modules. Adjust the input values to suit your specific requirements.

## Examples
For detailed examples on how to use this module, please refer to the [Examples](https://github.com/slovink/terraform-google-service-account/tree/master/example) directory within this repository.

## Author
Your Name
Replace **MIT** and **slovink** with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.
## License
This Terraform module is provided under the **MIT** License. Please see the [LICENSE](https://github.com/slovink/terraform-google-service-account/blob/master/LICENSE) file for more details.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.7.4 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 5.45.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.45.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | git::https://github.com/slovink/terraform-google-labels.git | n/a |

## Resources

| Name | Type |
|------|------|
| [google_project_iam_member.default](https://registry.terraform.io/providers/hashicorp/google/5.45.0/docs/resources/project_iam_member) | resource |
| [google_service_account.service_account](https://registry.terraform.io/providers/hashicorp/google/5.45.0/docs/resources/service_account) | resource |
| [google_service_account_iam_binding.admin-account-iam](https://registry.terraform.io/providers/hashicorp/google/5.45.0/docs/resources/service_account_iam_binding) | resource |
| [google_service_account_key.mykey](https://registry.terraform.io/providers/hashicorp/google/5.45.0/docs/resources/service_account_key) | resource |
| [google_client_config.current](https://registry.terraform.io/providers/hashicorp/google/5.45.0/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | (Required) The account id that is used to generate the service account email address and a stable unique id. | `string` | `"service-account-id"` | no |
| <a name="input_description"></a> [description](#input\_description) | (Optional) A text description of the service account. | `string` | `"ManagedBy, 'slovink' "` | no |
| <a name="input_disabled"></a> [disabled](#input\_disabled) | (Optional) Whether a service account is disabled or not. Defaults to false. | `bool` | `false` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | A boolean flag to enable/disable service-account . | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| <a name="input_iam_binding_enabled"></a> [iam\_binding\_enabled](#input\_iam\_binding\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `true` | no |
| <a name="input_iam_member_enabled"></a> [iam\_member\_enabled](#input\_iam\_member\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `true` | no |
| <a name="input_keepers"></a> [keepers](#input\_keepers) | Arbitrary map of values that, when changed, will trigger a new key to be generated. | `map(string)` | `null` | no |
| <a name="input_key_algorithm"></a> [key\_algorithm](#input\_key\_algorithm) | (Optional) The algorithm used to generate the key. KEY\_ALG\_RSA\_2048 is the default algorithm. | `string` | `"KEY_ALG_RSA_2048"` | no |
| <a name="input_key_enabled"></a> [key\_enabled](#input\_key\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `true` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] . | `list(any)` | <pre>[<br>  "name",<br>  "environment"<br>]</pre> | no |
| <a name="input_managedby"></a> [managedby](#input\_managedby) | ManagedBy, eg 'slovink'. | `string` | `"slovink"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the resource. Provided by the client when the resource is created. | `string` | `""` | no |
| <a name="input_private_key_type"></a> [private\_key\_type](#input\_private\_key\_type) | (Optional) The output format of the private key. TYPE\_GOOGLE\_CREDENTIALS\_FILE is the default output format. | `string` | `"TYPE_GOOGLE_CREDENTIALS_FILE"` | no |
| <a name="input_public_key_type"></a> [public\_key\_type](#input\_public\_key\_type) | (Optional) The output format of the public key requested. TYPE\_X509\_PEM\_FILE is the default output format. | `string` | `"TYPE_X509_PEM_FILE"` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Terraform current module repo | `string` | `"https://github.com/slovink/terraform-google-service-account"` | no |
| <a name="input_roles"></a> [roles](#input\_roles) | The role that should be applied. | `list(string)` | `[]` | no |
| <a name="input_service_account_enabled"></a> [service\_account\_enabled](#input\_service\_account\_enabled) | Set to false to prevent the module from creating any resources. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_email"></a> [account\_email](#output\_account\_email) | The e-mail address of the service account. |
| <a name="output_account_id"></a> [account\_id](#output\_account\_id) | an identifier for the resource with format |
| <a name="output_account_name"></a> [account\_name](#output\_account\_name) | The fully-qualified name of the service account. |
| <a name="output_account_unique_id"></a> [account\_unique\_id](#output\_account\_unique\_id) | The unique id of the service account. |
| <a name="output_etag"></a> [etag](#output\_etag) | The etag of the service account IAM policy. |
| <a name="output_id"></a> [id](#output\_id) | The iam  id of the service account. |
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | An identifier for the  key\_id resource with format |
| <a name="output_key_name"></a> [key\_name](#output\_key\_name) | The name used for this key pair |
| <a name="output_private_key"></a> [private\_key](#output\_private\_key) | The private key in JSON format, base64 encoded. This is what you normally get as a file when creating service account keys through the CLI or web console. This is only populated when creating a new key. |
| <a name="output_public_key"></a> [public\_key](#output\_public\_key) | The public key, base64 encoded |
| <a name="output_roles"></a> [roles](#output\_roles) | The role that should be applied. |
| <a name="output_valid_after"></a> [valid\_after](#output\_valid\_after) | The key can be used after this timestamp. A timestamp in RFC3339 UTC Zulu format, accurate to nanoseconds. |
| <a name="output_valid_before"></a> [valid\_before](#output\_valid\_before) | The key can be used before this timestamp. A timestamp in RFC3339 UTC Zulu format, accurate to nanoseconds. |
<!-- END_TF_DOCS -->