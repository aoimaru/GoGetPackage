[app/sources/248861452.Dockerfile]
digraph {
  "sha256:ca0c2ffaac22abbbf8a8634e6092ff4932407facc60683210f67c130f708e24b" [label="local://context" shape="ellipse"];
  "sha256:39ac5ef1d02da6636c130fbf66d8e935e47fbdfc0d74d7db420edb7f78a7b132" [label="docker-image://docker.io/prom/prometheus:v1.4.1" shape="ellipse"];
  "sha256:03ad1b250f52174699defc663489c6b523bc4c454f51ae337a4625db9d7e9ea1" [label="copy{src=/prometheus.yml, dest=/etc/prometheus/prometheus.yml}" shape="note"];
  "sha256:eb3db47eeef4f6767987e33e8ec3de1abeea67a824a243c5fdcbd1c6a29e8ed7" [label="sha256:eb3db47eeef4f6767987e33e8ec3de1abeea67a824a243c5fdcbd1c6a29e8ed7" shape="plaintext"];
  "sha256:39ac5ef1d02da6636c130fbf66d8e935e47fbdfc0d74d7db420edb7f78a7b132" -> "sha256:03ad1b250f52174699defc663489c6b523bc4c454f51ae337a4625db9d7e9ea1" [label=""];
  "sha256:ca0c2ffaac22abbbf8a8634e6092ff4932407facc60683210f67c130f708e24b" -> "sha256:03ad1b250f52174699defc663489c6b523bc4c454f51ae337a4625db9d7e9ea1" [label=""];
  "sha256:03ad1b250f52174699defc663489c6b523bc4c454f51ae337a4625db9d7e9ea1" -> "sha256:eb3db47eeef4f6767987e33e8ec3de1abeea67a824a243c5fdcbd1c6a29e8ed7" [label=""];
}

