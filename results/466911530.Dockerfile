[app/sources/466911530.Dockerfile]
digraph {
  "sha256:6522aaf53b033c4e4fa4417496e33268329a18d06e0772efe6d0fdea1c16d85c" [label="docker-image://docker.io/library/openjdk:8u102-jdk" shape="ellipse"];
  "sha256:939eabd281a3eedf5cf703417debff10ad20e56d602d9ed2f8593866f34d831d" [label="/bin/sh -c apt-get update && apt-get install -y net-tools && rm -rf /var/lib/apt/lists/*   && useradd -c \"Jenkins Slave user\" -d $HOME -m jenkins-slave   && curl --create-dirs -sSLo /usr/share/jenkins/swarm-client-$JENKINS_SWARM_VERSION.jar https://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/swarm-client/$JENKINS_SWARM_VERSION/swarm-client-$JENKINS_SWARM_VERSION.jar   && chmod 755 /usr/share/jenkins" shape="box"];
  "sha256:28f048dc73fd209e6b24ca846b76966788d839b53d93893dec2dc18e3fd01a14" [label="/bin/sh -c mkdir -p /tmp/download     && curl -L $DOWNLOAD_URL | tar -xz -C /tmp/download     && cp /tmp/download/docker/docker /usr/bin/docker     && rm -rf /tmp/download" shape="box"];
  "sha256:b4e376c31e6a0033c01c484369b3996e002ee532fd6d8fd5f29ede29ee00f334" [label="/bin/sh -c addgroup --gid 999 docker && usermod -G docker jenkins-slave" shape="box"];
  "sha256:3f929be74b4842dc9b4b10488a36f3d3e12adca92341ac28f451cba671cfefc3" [label="local://context" shape="ellipse"];
  "sha256:8319f633e37402c58e72527fb2719ba5d02b00996cf4744f99895d67f15eb1d4" [label="copy{src=/jenkins-slave.sh, dest=/usr/local/bin/jenkins-slave.sh}" shape="note"];
  "sha256:b0517aef250db19bcb5c9b94de21700ba007dcf97495866b97af0b051753aaa0" [label="sha256:b0517aef250db19bcb5c9b94de21700ba007dcf97495866b97af0b051753aaa0" shape="plaintext"];
  "sha256:6522aaf53b033c4e4fa4417496e33268329a18d06e0772efe6d0fdea1c16d85c" -> "sha256:939eabd281a3eedf5cf703417debff10ad20e56d602d9ed2f8593866f34d831d" [label=""];
  "sha256:939eabd281a3eedf5cf703417debff10ad20e56d602d9ed2f8593866f34d831d" -> "sha256:28f048dc73fd209e6b24ca846b76966788d839b53d93893dec2dc18e3fd01a14" [label=""];
  "sha256:28f048dc73fd209e6b24ca846b76966788d839b53d93893dec2dc18e3fd01a14" -> "sha256:b4e376c31e6a0033c01c484369b3996e002ee532fd6d8fd5f29ede29ee00f334" [label=""];
  "sha256:b4e376c31e6a0033c01c484369b3996e002ee532fd6d8fd5f29ede29ee00f334" -> "sha256:8319f633e37402c58e72527fb2719ba5d02b00996cf4744f99895d67f15eb1d4" [label=""];
  "sha256:3f929be74b4842dc9b4b10488a36f3d3e12adca92341ac28f451cba671cfefc3" -> "sha256:8319f633e37402c58e72527fb2719ba5d02b00996cf4744f99895d67f15eb1d4" [label=""];
  "sha256:8319f633e37402c58e72527fb2719ba5d02b00996cf4744f99895d67f15eb1d4" -> "sha256:b0517aef250db19bcb5c9b94de21700ba007dcf97495866b97af0b051753aaa0" [label=""];
}

