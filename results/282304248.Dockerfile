[app/sources/282304248.Dockerfile]
digraph {
  "sha256:3b07272623ad28546ef1ef12214c57897a5ef5330c9bf3b169919e43f1e0b15d" [label="docker-image://docker.io/envoyproxy/envoy:latest" shape="ellipse"];
  "sha256:bab0d5b8e93ab1a6a23286bf8d7093a26a72f4d31da2af46c01c5db0f67e0604" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:73b57830d9556ee8666caebc75aade885efff52a60e9aabeb2459c37d53524a6" [label="local://context" shape="ellipse"];
  "sha256:b6b70da6bc10d3eb65590302b17f9a033c7c031518e35a88d2b2219039259460" [label="copy{src=/google_com_proxy.v2.yaml, dest=/etc/envoy.yaml}" shape="note"];
  "sha256:20c4f0c25bdfd90c964b5b6a3831c0e360c9be3aee3a1abebade985ab49e4175" [label="sha256:20c4f0c25bdfd90c964b5b6a3831c0e360c9be3aee3a1abebade985ab49e4175" shape="plaintext"];
  "sha256:3b07272623ad28546ef1ef12214c57897a5ef5330c9bf3b169919e43f1e0b15d" -> "sha256:bab0d5b8e93ab1a6a23286bf8d7093a26a72f4d31da2af46c01c5db0f67e0604" [label=""];
  "sha256:bab0d5b8e93ab1a6a23286bf8d7093a26a72f4d31da2af46c01c5db0f67e0604" -> "sha256:b6b70da6bc10d3eb65590302b17f9a033c7c031518e35a88d2b2219039259460" [label=""];
  "sha256:73b57830d9556ee8666caebc75aade885efff52a60e9aabeb2459c37d53524a6" -> "sha256:b6b70da6bc10d3eb65590302b17f9a033c7c031518e35a88d2b2219039259460" [label=""];
  "sha256:b6b70da6bc10d3eb65590302b17f9a033c7c031518e35a88d2b2219039259460" -> "sha256:20c4f0c25bdfd90c964b5b6a3831c0e360c9be3aee3a1abebade985ab49e4175" [label=""];
}

