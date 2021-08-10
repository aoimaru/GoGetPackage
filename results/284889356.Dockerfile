[app/sources/284889356.Dockerfile]
digraph {
  "sha256:de133701515bce8d723c98ab51a29db52d66507303a0ddcab36b63cdf16bdfbf" [label="docker-image://docker.io/library/jenkins:alpine" shape="ellipse"];
  "sha256:f25e0200e6ac441fee10b16220181100c4460151d07824107df31182a87680b9" [label="/bin/sh -c curl -O https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz     && tar zxvf docker-latest.tgz     && cp docker/docker /usr/local/bin/     && rm -rf docker docker-latest.tgz" shape="box"];
  "sha256:529dc8dde29a05ee2e749bf76cceffce6ea32947448f6706ad0e99d8f53be6ef" [label="sha256:529dc8dde29a05ee2e749bf76cceffce6ea32947448f6706ad0e99d8f53be6ef" shape="plaintext"];
  "sha256:de133701515bce8d723c98ab51a29db52d66507303a0ddcab36b63cdf16bdfbf" -> "sha256:f25e0200e6ac441fee10b16220181100c4460151d07824107df31182a87680b9" [label=""];
  "sha256:f25e0200e6ac441fee10b16220181100c4460151d07824107df31182a87680b9" -> "sha256:529dc8dde29a05ee2e749bf76cceffce6ea32947448f6706ad0e99d8f53be6ef" [label=""];
}

