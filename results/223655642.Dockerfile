[app/sources/223655642.Dockerfile]
digraph {
  "sha256:381f5608964dcde3612ac1ed4f9b3c342d541d1da7ea29e14f9177c90bfd60d2" [label="docker-image://docker.io/aegir/hostmaster:latest" shape="ellipse"];
  "sha256:706384d3c7552683be7f8c78c2ebe2276e70ef21dd2b838c8e46629cd1f640ab" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends        software-properties-common     && rm -Rf /var/lib/apt/lists/*     && rm -Rf /usr/share/doc && rm -Rf /usr/share/man     && apt-get clean" shape="box"];
  "sha256:4e4f3a02b04e3547cadae5dd0947d697416226e2e8f164ac8bc49dcd0ad63df3" [label="/bin/sh -c apt-add-repository -y ppa:ansible/ansible     && apt-get update     && apt-get install -y --no-install-recommends        ansible     && rm -rf /var/lib/apt/lists/*     && rm -Rf /usr/share/doc && rm -Rf /usr/share/man     && apt-get clean" shape="box"];
  "sha256:de04e380b9709657a1ff6ca05d98e49dfbdf183e4dc708545bfb585eb13a99ca" [label="sha256:de04e380b9709657a1ff6ca05d98e49dfbdf183e4dc708545bfb585eb13a99ca" shape="plaintext"];
  "sha256:381f5608964dcde3612ac1ed4f9b3c342d541d1da7ea29e14f9177c90bfd60d2" -> "sha256:706384d3c7552683be7f8c78c2ebe2276e70ef21dd2b838c8e46629cd1f640ab" [label=""];
  "sha256:706384d3c7552683be7f8c78c2ebe2276e70ef21dd2b838c8e46629cd1f640ab" -> "sha256:4e4f3a02b04e3547cadae5dd0947d697416226e2e8f164ac8bc49dcd0ad63df3" [label=""];
  "sha256:4e4f3a02b04e3547cadae5dd0947d697416226e2e8f164ac8bc49dcd0ad63df3" -> "sha256:de04e380b9709657a1ff6ca05d98e49dfbdf183e4dc708545bfb585eb13a99ca" [label=""];
}

