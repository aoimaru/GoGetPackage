[app/sources/262589687.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:5295cbf470af20f73b31aba95e819ae46f881110e0a0a536f0e666f6d0cd31fd" [label="/bin/sh -c apk update && apk add --update git nodejs nodejs-npm && npm install npm@latest -g && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:ce3a6ba8d387f16b662918f5d0937f9af49556e1ce209c46b28cac4547cc567b" [label="/bin/sh -c git clone https://github.com/nicodeur/QualityDashboard.git /opt/qualityReport &&     cd /opt/qualityReport && git checkout 1.0" shape="box"];
  "sha256:b4012138fd4a1d4ffe2c71612deedea9ce4a01be690a5de791bac9596e7adf6a" [label="/bin/sh -c cd /opt/qualityReport && chmod 755 installDependencies.sh && ./installDependencies.sh" shape="box"];
  "sha256:76c71520356cbc5dcd13f8824e079c26b6b7740c87e7e4b81b4f90da46f010af" [label="mkdir{path=/opt/qualityReport}" shape="note"];
  "sha256:412a4ff52cb593ad0df033680ff4809f9e9bfa9b2f364cc0734fcc9a4f24f218" [label="sha256:412a4ff52cb593ad0df033680ff4809f9e9bfa9b2f364cc0734fcc9a4f24f218" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:5295cbf470af20f73b31aba95e819ae46f881110e0a0a536f0e666f6d0cd31fd" [label=""];
  "sha256:5295cbf470af20f73b31aba95e819ae46f881110e0a0a536f0e666f6d0cd31fd" -> "sha256:ce3a6ba8d387f16b662918f5d0937f9af49556e1ce209c46b28cac4547cc567b" [label=""];
  "sha256:ce3a6ba8d387f16b662918f5d0937f9af49556e1ce209c46b28cac4547cc567b" -> "sha256:b4012138fd4a1d4ffe2c71612deedea9ce4a01be690a5de791bac9596e7adf6a" [label=""];
  "sha256:b4012138fd4a1d4ffe2c71612deedea9ce4a01be690a5de791bac9596e7adf6a" -> "sha256:76c71520356cbc5dcd13f8824e079c26b6b7740c87e7e4b81b4f90da46f010af" [label=""];
  "sha256:76c71520356cbc5dcd13f8824e079c26b6b7740c87e7e4b81b4f90da46f010af" -> "sha256:412a4ff52cb593ad0df033680ff4809f9e9bfa9b2f364cc0734fcc9a4f24f218" [label=""];
}

