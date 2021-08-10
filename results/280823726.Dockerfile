[app/sources/280823726.Dockerfile]
digraph {
  "sha256:bac32da15258521f2eb9791633759396ebf1e6b2cf0ca0bf8720026716fbef60" [label="docker-image://docker.io/library/ubuntu-upstart:trusty" shape="ellipse"];
  "sha256:cff18a0a9ca4e07f8428d4ee2453dddb296086b1a14e2369155cf352dac510d2" [label="/bin/sh -c apt-get update && apt-get install -y openssh-server && apt-get clean" shape="box"];
  "sha256:f51f7a4e3507da76218e49b7fb11a5e4c7a51e25cbf7c92ce6e782b239c489f0" [label="local://context" shape="ellipse"];
  "sha256:4fa021df1591b3e4e0d3dfbc5adc616276e8e76ae2b3fc2584833c17b0b2d4b8" [label="copy{src=/ami-spec.pub, dest=/root/.ssh/authorized_keys}" shape="note"];
  "sha256:fc9ef02e43eb0c176f4e880c2b8d2ee3f070db18faabd65f38242f829bc7720c" [label="sha256:fc9ef02e43eb0c176f4e880c2b8d2ee3f070db18faabd65f38242f829bc7720c" shape="plaintext"];
  "sha256:bac32da15258521f2eb9791633759396ebf1e6b2cf0ca0bf8720026716fbef60" -> "sha256:cff18a0a9ca4e07f8428d4ee2453dddb296086b1a14e2369155cf352dac510d2" [label=""];
  "sha256:cff18a0a9ca4e07f8428d4ee2453dddb296086b1a14e2369155cf352dac510d2" -> "sha256:4fa021df1591b3e4e0d3dfbc5adc616276e8e76ae2b3fc2584833c17b0b2d4b8" [label=""];
  "sha256:f51f7a4e3507da76218e49b7fb11a5e4c7a51e25cbf7c92ce6e782b239c489f0" -> "sha256:4fa021df1591b3e4e0d3dfbc5adc616276e8e76ae2b3fc2584833c17b0b2d4b8" [label=""];
  "sha256:4fa021df1591b3e4e0d3dfbc5adc616276e8e76ae2b3fc2584833c17b0b2d4b8" -> "sha256:fc9ef02e43eb0c176f4e880c2b8d2ee3f070db18faabd65f38242f829bc7720c" [label=""];
}

