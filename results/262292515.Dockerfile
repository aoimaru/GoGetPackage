[app/sources/262292515.Dockerfile]
digraph {
  "sha256:53f77c67eee35ac9e9e8686346e616c214a65391355fa57c102a71c8f38a7871" [label="docker-image://docker.io/jenkins/jenkins:lts@sha256:abcd55c9f19c85808124a4d82e3412719cd5c511c03ebd7d4210e9fa9e8f1029" shape="ellipse"];
  "sha256:ee3f2702bfae301ae204b63e632d5c0d415b9535fa0c791129cbbbe0159cfe4a" [label="/bin/sh -c apt-get update  && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends      apt-transport-https      ca-certificates      curl      gnupg2      software-properties-common      vim      wget  && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8470b18e90da96539be97fb2254ead555309fab2e57933774ee9106a83db7cc4" [label="/bin/sh -c dpkgArch=\"$(dpkg --print-architecture | awk -F- '{ print $NF }')\"  && wget -O /usr/local/bin/gosu \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch\"  && chmod +x /usr/local/bin/gosu  && gosu nobody true" shape="box"];
  "sha256:c2eba3b27c79f3ab2da78f37f9228f5cf70cfd0b6003701d02fe2c4f7f22d20e" [label="/bin/sh -c curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -  && add-apt-repository      \"deb [arch=amd64] https://download.docker.com/linux/debian      $(lsb_release -cs)      stable\"  && apt-get update  && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends     docker-ce-cli${DOCKER_CLI_VERSION}  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && groupadd -r docker  && usermod -aG docker jenkins" shape="box"];
  "sha256:0bcb5b5c20f7077e1725dea2c024a28964758f86dae67947d67cffae431034d2" [label="local://context" shape="ellipse"];
  "sha256:41d16b34fac36629ff638d38e9fe708241c19ad26725f09501306bc2300c9c73" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:658f2b69a0407f458b07ace64831bd7120b75c56b39399243491714fb3d4d728" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:8278273570c76b781a73834133f82b9d62056567395961dfbe0656f9fb7b55c0" [label="sha256:8278273570c76b781a73834133f82b9d62056567395961dfbe0656f9fb7b55c0" shape="plaintext"];
  "sha256:53f77c67eee35ac9e9e8686346e616c214a65391355fa57c102a71c8f38a7871" -> "sha256:ee3f2702bfae301ae204b63e632d5c0d415b9535fa0c791129cbbbe0159cfe4a" [label=""];
  "sha256:ee3f2702bfae301ae204b63e632d5c0d415b9535fa0c791129cbbbe0159cfe4a" -> "sha256:8470b18e90da96539be97fb2254ead555309fab2e57933774ee9106a83db7cc4" [label=""];
  "sha256:8470b18e90da96539be97fb2254ead555309fab2e57933774ee9106a83db7cc4" -> "sha256:c2eba3b27c79f3ab2da78f37f9228f5cf70cfd0b6003701d02fe2c4f7f22d20e" [label=""];
  "sha256:c2eba3b27c79f3ab2da78f37f9228f5cf70cfd0b6003701d02fe2c4f7f22d20e" -> "sha256:41d16b34fac36629ff638d38e9fe708241c19ad26725f09501306bc2300c9c73" [label=""];
  "sha256:0bcb5b5c20f7077e1725dea2c024a28964758f86dae67947d67cffae431034d2" -> "sha256:41d16b34fac36629ff638d38e9fe708241c19ad26725f09501306bc2300c9c73" [label=""];
  "sha256:41d16b34fac36629ff638d38e9fe708241c19ad26725f09501306bc2300c9c73" -> "sha256:658f2b69a0407f458b07ace64831bd7120b75c56b39399243491714fb3d4d728" [label=""];
  "sha256:658f2b69a0407f458b07ace64831bd7120b75c56b39399243491714fb3d4d728" -> "sha256:8278273570c76b781a73834133f82b9d62056567395961dfbe0656f9fb7b55c0" [label=""];
}

