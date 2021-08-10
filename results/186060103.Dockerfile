[app/sources/186060103.Dockerfile]
digraph {
  "sha256:987be877e2183a86cef73b00fb876037d6987947230d1071ebb4fbbe34e3d1d8" [label="docker-image://docker.io/library/buildpack-deps:jessie-curl" shape="ellipse"];
  "sha256:bc7dd9db49e63271afd5d91adc052ba338634ce41e5bc46d16428e74e344c468" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tbzr \t\tgit \t\tmercurial \t\topenssh-client \t\tsubversion \t\t\t\tprocps \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f116f2aedef28913d5f88b8598418bc26b808b392ad60d4eb26637eac58c0a93" [label="sha256:f116f2aedef28913d5f88b8598418bc26b808b392ad60d4eb26637eac58c0a93" shape="plaintext"];
  "sha256:987be877e2183a86cef73b00fb876037d6987947230d1071ebb4fbbe34e3d1d8" -> "sha256:bc7dd9db49e63271afd5d91adc052ba338634ce41e5bc46d16428e74e344c468" [label=""];
  "sha256:bc7dd9db49e63271afd5d91adc052ba338634ce41e5bc46d16428e74e344c468" -> "sha256:f116f2aedef28913d5f88b8598418bc26b808b392ad60d4eb26637eac58c0a93" [label=""];
}

