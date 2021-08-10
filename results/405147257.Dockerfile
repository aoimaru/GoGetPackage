[app/sources/405147257.Dockerfile]
digraph {
  "sha256:0728f8531b0721277aed2525f021cee42eab07b609130f7a236067d2b2648b5c" [label="docker-image://docker.io/library/php:latest" shape="ellipse"];
  "sha256:a5255f302723aae4977d64dfb165959c7b4daa8524d40e5b3d6eeef2a446610d" [label="local://context" shape="ellipse"];
  "sha256:9b216f0baf564a0a8ffd347a303ed2ca75e59e1fa3383e6462c2bce9dc4af5eb" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:3f0c6c8a0413f75732b15bbe8079eb4d851187385dd9346e3f1957ce8528db9c" [label="mkdir{path=/app}" shape="note"];
  "sha256:847a50430bb90c74aabae9bf78a07827ddb877f98958fc62fe0e778860b77769" [label="sha256:847a50430bb90c74aabae9bf78a07827ddb877f98958fc62fe0e778860b77769" shape="plaintext"];
  "sha256:0728f8531b0721277aed2525f021cee42eab07b609130f7a236067d2b2648b5c" -> "sha256:9b216f0baf564a0a8ffd347a303ed2ca75e59e1fa3383e6462c2bce9dc4af5eb" [label=""];
  "sha256:a5255f302723aae4977d64dfb165959c7b4daa8524d40e5b3d6eeef2a446610d" -> "sha256:9b216f0baf564a0a8ffd347a303ed2ca75e59e1fa3383e6462c2bce9dc4af5eb" [label=""];
  "sha256:9b216f0baf564a0a8ffd347a303ed2ca75e59e1fa3383e6462c2bce9dc4af5eb" -> "sha256:3f0c6c8a0413f75732b15bbe8079eb4d851187385dd9346e3f1957ce8528db9c" [label=""];
  "sha256:3f0c6c8a0413f75732b15bbe8079eb4d851187385dd9346e3f1957ce8528db9c" -> "sha256:847a50430bb90c74aabae9bf78a07827ddb877f98958fc62fe0e778860b77769" [label=""];
}

