[app/sources/135455627.Dockerfile]
digraph {
  "sha256:f7180931db58f5100b14c872059d09ce8f2d8ef609ffbb799888d3238b56e09a" [label="docker-image://docker.io/nordstrom/baseimage-ubuntu:14.04.1" shape="ellipse"];
  "sha256:aa872cf6cf3440a8e764df0f9d5756060835a61bf48ef842cdc6e17a700d9dd6" [label="/bin/sh -c apt-get update -qy  && apt-get install -qy --no-install-recommends --no-install-suggests      openjdk-7-jre-headless  && apt-get clean  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:f27045dd1a90ad8d1ea3bcae6bd54df72164e9a6c38a654f3a64c705d13da681" [label="sha256:f27045dd1a90ad8d1ea3bcae6bd54df72164e9a6c38a654f3a64c705d13da681" shape="plaintext"];
  "sha256:f7180931db58f5100b14c872059d09ce8f2d8ef609ffbb799888d3238b56e09a" -> "sha256:aa872cf6cf3440a8e764df0f9d5756060835a61bf48ef842cdc6e17a700d9dd6" [label=""];
  "sha256:aa872cf6cf3440a8e764df0f9d5756060835a61bf48ef842cdc6e17a700d9dd6" -> "sha256:f27045dd1a90ad8d1ea3bcae6bd54df72164e9a6c38a654f3a64c705d13da681" [label=""];
}

