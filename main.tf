# Create Pub/Sub Topic
resource "google_pubsub_topic" "pubsub_topic" {
  name    = var.topic_name
  project = var.project_id
  labels  = var.topic_labels
}

# Create Pub/Sub Subscription
resource "google_pubsub_subscription" "pubsub_subscription" {
  name    = var.subscription_name
  project = var.project_id
  topic   = google_pubsub_topic.pubsub_topic.name

  ack_deadline_seconds = var.ack_deadline_seconds
  expiration_policy {
    ttl = var.subscription_ttl
  }

  push_config {
    push_endpoint = var.push_endpoint
  }

  retry_policy {
    minimum_backoff = var.retry_minimum_backoff
    maximum_backoff = var.retry_maximum_backoff
  }
}

# Grant Pub/Sub Publisher role to a service account
resource "google_pubsub_topic_iam_binding" "publisher_binding" {
  topic   = google_pubsub_topic.pubsub_topic.name
  project = var.project_id
  role    = "roles/pubsub.publisher"

  members = var.publisher_members
}


# Grant Pub/Sub Subscriber role to a service account
resource "google_pubsub_subscription_iam_binding" "subscriber_binding" {
  subscription = google_pubsub_subscription.pubsub_subscription.name
  project      = var.project_id
  role         = "roles/pubsub.subscriber"

  members = var.subscriber_members
}
