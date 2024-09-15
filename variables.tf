#### Generic Variables
variable "project_id" {
  description = "The ID of the project in which to create the Pub/Sub resources."
  type        = string
}

variable "region" {
  description = "The region for Pub/Sub."
  type        = string
  default     = "us-central1"
}

variable "topic_name" {
  description = "The name of the Pub/Sub topic."
  type        = string
}

variable "subscription_name" {
  description = "The name of the Pub/Sub subscription."
  type        = string
}

variable "ack_deadline_seconds" {
  description = "The time Pub/Sub waits for the subscriber to acknowledge receipt of a message."
  type        = number
  default     = 10
}

variable "subscription_ttl" {
  description = "The TTL for the subscription."
  type        = string
  default     = "604800s" # 7 days
}

variable "push_endpoint" {
  description = "The URL of an endpoint to which messages are pushed."
  type        = string
  default     = null
}

variable "retry_minimum_backoff" {
  description = "The minimum backoff time for retrying a message."
  type        = string
  default     = "10s"
}

variable "retry_maximum_backoff" {
  description = "The maximum backoff time for retrying a message."
  type        = string
  default     = "600s"
}

variable "publisher_members" {
  description = "A list of members (e.g., service accounts) that are granted the Publisher role."
  type        = list(string)
}

variable "subscriber_members" {
  description = "A list of members (e.g., service accounts) that are granted the Subscriber role."
  type        = list(string)
}

variable "topic_labels" {
  description = "A map of labels to assign to the Pub/Sub topic."
  type        = map(string)
  default     = {}
}
