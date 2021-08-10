[app/sources/312502519.Dockerfile]
digraph {
  "sha256:dd6eb47761484f83e38e06c4834430fad239757039e26f839c9e33e213db686c" [label="docker-image://docker.io/gatekeeper/java:latest" shape="ellipse"];
  "sha256:499b20e00ef87fe35e5394772befc28e1821b777edd8ab3a69e314767f3d4f91" [label="local://context" shape="ellipse"];
  "sha256:82cd750ac4848fa161d8cffc233039893ca59846a28ddf0e53b19c631f490824" [label="copy{src=/target, dest=/usr/share/gatekeeper/app.jar}" shape="note"];
  "sha256:9a84bca968f1d28f4320cf12423dabcd28d44f3fc1e6ddeac9e4775337a7bc4d" [label="/bin/sh -c ls -ltr /usr/share/gatekeeper" shape="box"];
  "sha256:7c248f360e922f3b4227e51186fd9255c0066cbc34e6ed2ec51be3de39e2f46c" [label="sha256:7c248f360e922f3b4227e51186fd9255c0066cbc34e6ed2ec51be3de39e2f46c" shape="plaintext"];
  "sha256:dd6eb47761484f83e38e06c4834430fad239757039e26f839c9e33e213db686c" -> "sha256:82cd750ac4848fa161d8cffc233039893ca59846a28ddf0e53b19c631f490824" [label=""];
  "sha256:499b20e00ef87fe35e5394772befc28e1821b777edd8ab3a69e314767f3d4f91" -> "sha256:82cd750ac4848fa161d8cffc233039893ca59846a28ddf0e53b19c631f490824" [label=""];
  "sha256:82cd750ac4848fa161d8cffc233039893ca59846a28ddf0e53b19c631f490824" -> "sha256:9a84bca968f1d28f4320cf12423dabcd28d44f3fc1e6ddeac9e4775337a7bc4d" [label=""];
  "sha256:9a84bca968f1d28f4320cf12423dabcd28d44f3fc1e6ddeac9e4775337a7bc4d" -> "sha256:7c248f360e922f3b4227e51186fd9255c0066cbc34e6ed2ec51be3de39e2f46c" [label=""];
}

