[app/sources/225512516.Dockerfile]
digraph {
  "sha256:d554861fb9ce6b74721e23c869a7a2a77672069bdb706424e36d8cfb81e06fdb" [label="docker-image://docker.io/library/jenkins:1.625.2" shape="ellipse"];
  "sha256:c8d8dade20d3bf5d81715806ac655bdca8a6c11934a6f188e73d62320f0e3cb9" [label="/bin/sh -c apt-get update -yqq && apt-get install -yqq dnsutils bash python" shape="box"];
  "sha256:e546447eefa24db110992a2a0014c5173ecdf04f539a18d7034bbe66ddc8388e" [label="sha256:e546447eefa24db110992a2a0014c5173ecdf04f539a18d7034bbe66ddc8388e" shape="plaintext"];
  "sha256:d554861fb9ce6b74721e23c869a7a2a77672069bdb706424e36d8cfb81e06fdb" -> "sha256:c8d8dade20d3bf5d81715806ac655bdca8a6c11934a6f188e73d62320f0e3cb9" [label=""];
  "sha256:c8d8dade20d3bf5d81715806ac655bdca8a6c11934a6f188e73d62320f0e3cb9" -> "sha256:e546447eefa24db110992a2a0014c5173ecdf04f539a18d7034bbe66ddc8388e" [label=""];
}

