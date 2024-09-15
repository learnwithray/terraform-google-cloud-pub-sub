# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [v1.0.0] - 2024-09-15
### Added
- Added support for configuring `push_endpoint` for Pub/Sub push-based subscriptions.
- Introduced `retry_minimum_backoff` and `retry_maximum_backoff` variables to configure message delivery retry policies.
- Added support for adding labels to the Pub/Sub topic via the `topic_labels` variable.
- Initial release of the Google Cloud Pub/Sub Terraform module.
- Supports creation of Pub/Sub topic and subscription.
- Configurable `ack_deadline_seconds` for subscription acknowledgment deadline.
- IAM role binding for publisher and subscriber roles.
- Added outputs for `pubsub_topic` and `pubsub_subscription`.

