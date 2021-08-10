[app/sources/252769942.Dockerfile]
digraph {
  "sha256:ecff97891c79a01f3a3fea9f183bd983f8b58f09551d524b98e3abf54a5fbb12" [label="docker-image://docker.io/correl/erlang:latest" shape="ellipse"];
  "sha256:44a80822fe0ca502b93224da2a1f03d3ef03b0a4bcbc00f21b3c00d6debab835" [label="/bin/sh -c git clone https://github.com/ChicagoBoss/ChicagoBoss.git && cd ChicagoBoss/ && git checkout tags/$CB_VERSION && ./rebar get-deps && ./rebar compile && make" shape="box"];
  "sha256:eb7b3b0de17a44175167d0bb1ca851fafb5f606594122f7862c79b172c4651e5" [label="sha256:eb7b3b0de17a44175167d0bb1ca851fafb5f606594122f7862c79b172c4651e5" shape="plaintext"];
  "sha256:ecff97891c79a01f3a3fea9f183bd983f8b58f09551d524b98e3abf54a5fbb12" -> "sha256:44a80822fe0ca502b93224da2a1f03d3ef03b0a4bcbc00f21b3c00d6debab835" [label=""];
  "sha256:44a80822fe0ca502b93224da2a1f03d3ef03b0a4bcbc00f21b3c00d6debab835" -> "sha256:eb7b3b0de17a44175167d0bb1ca851fafb5f606594122f7862c79b172c4651e5" [label=""];
}

