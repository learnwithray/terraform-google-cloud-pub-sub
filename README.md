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
