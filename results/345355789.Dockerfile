[app/sources/345355789.Dockerfile]
digraph {
  "sha256:b39e7e9fafb45fa40c16984fac5e27cf99aeab8b26d77ad11d607fcd7133aeae" [label="docker-image://docker.io/balenalib/armv7hf-ubuntu:trusty-build@sha256:fd4b5e0651f8509f30018514bd98a2f7c110338f8c84ddd29c413be185094ed1" shape="ellipse"];
  "sha256:aa0041fb9dd050e8662e449db002b4499ab24c1ab6fc48068e0c97ac853e6fd7" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b10f35ee7a5346aeec7fedb1228c7672a2c405775ddd8f4f1084a80e0785a256" [label="sha256:b10f35ee7a5346aeec7fedb1228c7672a2c405775ddd8f4f1084a80e0785a256" shape="plaintext"];
  "sha256:b39e7e9fafb45fa40c16984fac5e27cf99aeab8b26d77ad11d607fcd7133aeae" -> "sha256:aa0041fb9dd050e8662e449db002b4499ab24c1ab6fc48068e0c97ac853e6fd7" [label=""];
  "sha256:aa0041fb9dd050e8662e449db002b4499ab24c1ab6fc48068e0c97ac853e6fd7" -> "sha256:b10f35ee7a5346aeec7fedb1228c7672a2c405775ddd8f4f1084a80e0785a256" [label=""];
}

