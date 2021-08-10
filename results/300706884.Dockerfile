[app/sources/300706884.Dockerfile]
digraph {
  "sha256:bbc36c747f67eb2548c35cca070eb62a17ca9311fd893a63032fe3a66ca3c992" [label="docker-image://docker.io/library/busybox:glibc" shape="ellipse"];
  "sha256:8712ffb5fbad5ae16be5f54bc7e9b662fe3940d568c52fbff4eea055035011fc" [label="mkdir{path=/usr/bin}" shape="note"];
  "sha256:1b432b4b2aceea5d68636bef5551b9522049f9373b8ddae42be135028774a8bb" [label="local://context" shape="ellipse"];
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" [label="docker-image://docker.io/library/golang:1.12" shape="ellipse"];
  "sha256:4c37e0f07fbd822abf5daecdb94b94c0758bb317829b8b4610a58a316e51792c" [label="mkdir{path=/go/src/github.com/carlpett/stream_exporter}" shape="note"];
  "sha256:a8352db881017157a1cdc4de062d0ad7e70bb9771874a0e7fe5c2d04fa5092b8" [label="copy{src=/, dest=/go/src/github.com/carlpett/stream_exporter/}" shape="note"];
  "sha256:fad6a4f1a555af1ea2f72f93552e78a8a3326171e9f7f52a1a1ec9d49c1da999" [label="/bin/sh -c make build" shape="box"];
  "sha256:9bf4c742a9f6369e50a72f8969d2e7412dd83470f0ce4775142c563b441a0e96" [label="copy{src=/go/src/github.com/carlpett/stream_exporter/stream_exporter, dest=/usr/bin/stream_exporter}" shape="note"];
  "sha256:fa8d07a92a7e5db835e39cb5c03e5d6ef8b6d5c05196bb9d6ee212cfa37af14c" [label="sha256:fa8d07a92a7e5db835e39cb5c03e5d6ef8b6d5c05196bb9d6ee212cfa37af14c" shape="plaintext"];
  "sha256:bbc36c747f67eb2548c35cca070eb62a17ca9311fd893a63032fe3a66ca3c992" -> "sha256:8712ffb5fbad5ae16be5f54bc7e9b662fe3940d568c52fbff4eea055035011fc" [label=""];
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" -> "sha256:4c37e0f07fbd822abf5daecdb94b94c0758bb317829b8b4610a58a316e51792c" [label=""];
  "sha256:4c37e0f07fbd822abf5daecdb94b94c0758bb317829b8b4610a58a316e51792c" -> "sha256:a8352db881017157a1cdc4de062d0ad7e70bb9771874a0e7fe5c2d04fa5092b8" [label=""];
  "sha256:1b432b4b2aceea5d68636bef5551b9522049f9373b8ddae42be135028774a8bb" -> "sha256:a8352db881017157a1cdc4de062d0ad7e70bb9771874a0e7fe5c2d04fa5092b8" [label=""];
  "sha256:a8352db881017157a1cdc4de062d0ad7e70bb9771874a0e7fe5c2d04fa5092b8" -> "sha256:fad6a4f1a555af1ea2f72f93552e78a8a3326171e9f7f52a1a1ec9d49c1da999" [label=""];
  "sha256:8712ffb5fbad5ae16be5f54bc7e9b662fe3940d568c52fbff4eea055035011fc" -> "sha256:9bf4c742a9f6369e50a72f8969d2e7412dd83470f0ce4775142c563b441a0e96" [label=""];
  "sha256:fad6a4f1a555af1ea2f72f93552e78a8a3326171e9f7f52a1a1ec9d49c1da999" -> "sha256:9bf4c742a9f6369e50a72f8969d2e7412dd83470f0ce4775142c563b441a0e96" [label=""];
  "sha256:9bf4c742a9f6369e50a72f8969d2e7412dd83470f0ce4775142c563b441a0e96" -> "sha256:fa8d07a92a7e5db835e39cb5c03e5d6ef8b6d5c05196bb9d6ee212cfa37af14c" [label=""];
}

