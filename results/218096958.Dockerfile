[app/sources/218096958.Dockerfile]
digraph {
  "sha256:40e2a3667a81aaf7a06a82e8bd00f3c8e42141bde52ccdb195f0658ab7f4bf2c" [label="docker-image://docker.io/accupara/ubuntu:18.04" shape="ellipse"];
  "sha256:cbebda5870576dff1617789c6f3c07b707806e3e13ce39fdbf1e11b5508f5426" [label="/bin/sh -c export DEBIAN_FRONTEND=noninteractive  && sudo apt-get update  && sudo apt-get -y dist-upgrade  && sudo apt-get install -y         maven         openjdk-8-jdk  && sudo apt-get purge -y openjdk-11-jre-headless  && sudo apt-get clean  && sudo rm -f /var/lib/apt/lists/*_dists_*" shape="box"];
  "sha256:4a1c752cf4a75a5c74f3e30d511e8a23e2229eaabaea6ad404312ccfe763d6d5" [label="sha256:4a1c752cf4a75a5c74f3e30d511e8a23e2229eaabaea6ad404312ccfe763d6d5" shape="plaintext"];
  "sha256:40e2a3667a81aaf7a06a82e8bd00f3c8e42141bde52ccdb195f0658ab7f4bf2c" -> "sha256:cbebda5870576dff1617789c6f3c07b707806e3e13ce39fdbf1e11b5508f5426" [label=""];
  "sha256:cbebda5870576dff1617789c6f3c07b707806e3e13ce39fdbf1e11b5508f5426" -> "sha256:4a1c752cf4a75a5c74f3e30d511e8a23e2229eaabaea6ad404312ccfe763d6d5" [label=""];
}

