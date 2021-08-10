[app/sources/345361743.Dockerfile]
digraph {
  "sha256:2c2884e5b2970ac7e617ff17095c61da49978af889baf5edcd53cb3c18c35417" [label="docker-image://docker.io/balenalib/aarch64-ubuntu:xenial-run" shape="ellipse"];
  "sha256:2ca3c71f82e9f3fd385105252ddb236fb97035d241d5b759ac400a7026da4bbe" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e8921f0c65bc7dfca091e0b556d57987e616e2187f3f5bd13e88d3ef5088d032" [label="sha256:e8921f0c65bc7dfca091e0b556d57987e616e2187f3f5bd13e88d3ef5088d032" shape="plaintext"];
  "sha256:2c2884e5b2970ac7e617ff17095c61da49978af889baf5edcd53cb3c18c35417" -> "sha256:2ca3c71f82e9f3fd385105252ddb236fb97035d241d5b759ac400a7026da4bbe" [label=""];
  "sha256:2ca3c71f82e9f3fd385105252ddb236fb97035d241d5b759ac400a7026da4bbe" -> "sha256:e8921f0c65bc7dfca091e0b556d57987e616e2187f3f5bd13e88d3ef5088d032" [label=""];
}

