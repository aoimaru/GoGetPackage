[app/sources/345362385.Dockerfile]
digraph {
  "sha256:1e48658dab35f827c5a8fdb60584c2054d786ecdd4ff4c1181becadd3793c643" [label="docker-image://docker.io/balenalib/aarch64-ubuntu:trusty-run" shape="ellipse"];
  "sha256:f8536444d961930c33604db3086441b5a9578883f8c5ac5668d6f34a88b5811d" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f21362088963d8a5143052e00ba241a110b33d17e62a1669a22ca3a7fca8f263" [label="sha256:f21362088963d8a5143052e00ba241a110b33d17e62a1669a22ca3a7fca8f263" shape="plaintext"];
  "sha256:1e48658dab35f827c5a8fdb60584c2054d786ecdd4ff4c1181becadd3793c643" -> "sha256:f8536444d961930c33604db3086441b5a9578883f8c5ac5668d6f34a88b5811d" [label=""];
  "sha256:f8536444d961930c33604db3086441b5a9578883f8c5ac5668d6f34a88b5811d" -> "sha256:f21362088963d8a5143052e00ba241a110b33d17e62a1669a22ca3a7fca8f263" [label=""];
}

