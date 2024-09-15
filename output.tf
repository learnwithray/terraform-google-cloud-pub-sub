# Outputs
output "pubsub_topic" {
  description = "The name of the Pub/Sub topic."
  value       = google_pubsub_topic.pubsub_topic.name
}

output "pubsub_subscription" {
  description = "The name of the Pub/Sub subscription."
  value       = google_pubsub_subscription.pubsub_subscription.name
}
