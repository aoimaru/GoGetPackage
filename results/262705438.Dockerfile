[app/sources/262705438.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:873e33b17ce5a5005d9fb6f31661c8d107df8824efc96580341c57a1e469a1db" [label="/bin/sh -c apk add --no-cache     curl     vim &&    curl -fsSL https://clis.ng.bluemix.net/install/linux | sh &&    ibmcloud plugin install container-service &&    ibmcloud plugin install container-registry &&    curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl &&    chmod +x ./kubectl &&    mv ./kubectl /usr/local/bin/kubectl &&    curl -O -L https://github.com/projectcalico/calicoctl/releases/download/v${SUPPORTED_CALICO}/calicoctl &&    mv ./calicoctl /usr/local/bin/calicoctl &&    chmod +x /usr/local/bin/calicoctl" shape="box"];
  "sha256:9ee5c3c7716acd04bfa3aed611e30c599607d7262e1de169d3a65c5ef91dd154" [label="sha256:9ee5c3c7716acd04bfa3aed611e30c599607d7262e1de169d3a65c5ef91dd154" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:873e33b17ce5a5005d9fb6f31661c8d107df8824efc96580341c57a1e469a1db" [label=""];
  "sha256:873e33b17ce5a5005d9fb6f31661c8d107df8824efc96580341c57a1e469a1db" -> "sha256:9ee5c3c7716acd04bfa3aed611e30c599607d7262e1de169d3a65c5ef91dd154" [label=""];
}

