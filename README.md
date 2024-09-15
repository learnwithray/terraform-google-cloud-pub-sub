# Terraform Google Pub/Sub Module

This module creates a Google Cloud Pub/Sub topic and subscription. It also assigns the necessary IAM roles to service accounts for publishing and subscribing.

<!-- ## Usage

```hcl
module "pubsub" {
  source            = "./terraform-google-pubsub"
  project_id        = "my-gcp-project"
  region            = "us-central1"
  topic_name        = "my-topic"
  subscription_name = "my-subscription"
  publisher_members = ["serviceAccount:my-publisher@my-project.iam.gserviceaccount.com"]
  subscriber_members = ["serviceAccount:my-subscriber@my-project.iam.gserviceaccount.com"]
  topic_labels      = {
    environment = "dev"
  }
} -->

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 5.11.0, < 6.0.0 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | >= 5.11.0, < 6.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 5.11.0, < 6.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_pubsub_subscription.pubsub_subscription](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_subscription) | resource |
| [google_pubsub_subscription_iam_binding.subscriber_binding](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_subscription_iam_binding) | resource |
| [google_pubsub_topic.pubsub_topic](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_topic) | resource |
| [google_pubsub_topic_iam_binding.publisher_binding](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_topic_iam_binding) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ack_deadline_seconds"></a> [ack\_deadline\_seconds](#input\_ack\_deadline\_seconds) | The time Pub/Sub waits for the subscriber to acknowledge receipt of a message. | `number` | `10` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The ID of the project in which to create the Pub/Sub resources. | `string` | n/a | yes |
| <a name="input_publisher_members"></a> [publisher\_members](#input\_publisher\_members) | A list of members (e.g., service accounts) that are granted the Publisher role. | `list(string)` | n/a | yes |
| <a name="input_push_endpoint"></a> [push\_endpoint](#input\_push\_endpoint) | The URL of an endpoint to which messages are pushed. | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | The region for Pub/Sub. | `string` | `"us-central1"` | no |
| <a name="input_retry_maximum_backoff"></a> [retry\_maximum\_backoff](#input\_retry\_maximum\_backoff) | The maximum backoff time for retrying a message. | `string` | `"600s"` | no |
| <a name="input_retry_minimum_backoff"></a> [retry\_minimum\_backoff](#input\_retry\_minimum\_backoff) | The minimum backoff time for retrying a message. | `string` | `"10s"` | no |
| <a name="input_subscriber_members"></a> [subscriber\_members](#input\_subscriber\_members) | A list of members (e.g., service accounts) that are granted the Subscriber role. | `list(string)` | n/a | yes |
| <a name="input_subscription_name"></a> [subscription\_name](#input\_subscription\_name) | The name of the Pub/Sub subscription. | `string` | n/a | yes |
| <a name="input_subscription_ttl"></a> [subscription\_ttl](#input\_subscription\_ttl) | The TTL for the subscription. | `string` | `"604800s"` | no |
| <a name="input_topic_labels"></a> [topic\_labels](#input\_topic\_labels) | A map of labels to assign to the Pub/Sub topic. | `map(string)` | `{}` | no |
| <a name="input_topic_name"></a> [topic\_name](#input\_topic\_name) | The name of the Pub/Sub topic. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pubsub_topic"></a> [pubsub\_topic](#output\_pubsub\_topic) | The name of the Pub/Sub topic. |
<!-- END_TF_DOCS -->