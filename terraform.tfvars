# Google Cloud project ID
project_id = "burner-mansaini"

# Region where Pub/Sub resources will be deployed
region = "us-central1"

# Name of the Pub/Sub topic
topic_name = "cloud-pubsub-topic"

# Name of the Pub/Sub subscription
subscription_name = "cloud-pubsub-subscription"

# Acknowledgment deadline (in seconds)
ack_deadline_seconds = 20

# Time-to-live (TTL) for the Pub/Sub subscription (7 days in this case)
subscription_ttl = "604800s"

# Push endpoint URL (leave null if using pull-based subscription)
push_endpoint = "https://hello-99823646674.us-central1.run.app"

# Retry policy minimum backoff
retry_minimum_backoff = "10s"

# Retry policy maximum backoff
retry_maximum_backoff = "600s"

# Service accounts or members who can publish messages to the Pub/Sub topic
publisher_members = [
  "serviceAccount:service-99823646674@gcp-sa-pubsub.iam.gserviceaccount.com"
]

# Service accounts or members who can subscribe to the Pub/Sub topic
subscriber_members = [
  "serviceAccount:service-99823646674@gcp-sa-pubsub.iam.gserviceaccount.com"
]

# Labels to apply to the Pub/Sub topic
topic_labels = {
  environment = "dev"
  team        = "platform"
}
