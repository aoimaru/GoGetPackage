[app/sources/461802239.Dockerfile]
digraph {
  "sha256:6066e34eb4a44f8d387fd0d3350f4641ae4c5287ee9bda10fdd3f4b0119a52cf" [label="docker-image://docker.io/ppc64le/ubuntu:trusty" shape="ellipse"];
  "sha256:7a015053948324ec95934c1916cf2e05808fb60349e8808efe3dc030a5e77c6c" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev libsqlite3-dev pkg-config golang-1.6 libsystemd-journal-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6f077174b59b213091f2910285f0544a4144d1bf8b913237e7b0b7adafdf06ae" [label="/bin/sh -c curl -fsSL \"$GO_DOWNLOAD_URL\" -o golang.tar.gz \t&& tar -C /usr/local -xzf golang.tar.gz \t&& rm golang.tar.gz \t&& cd /usr/local/go/src && ./make.bash 2>&1 \t&& apt-get purge -y golang-1.6 && apt-get autoremove -y" shape="box"];
  "sha256:a3392c3964309b551a883a6ac77a5b1e5e60622a8514b2cf48bf462945b20d47" [label="sha256:a3392c3964309b551a883a6ac77a5b1e5e60622a8514b2cf48bf462945b20d47" shape="plaintext"];
  "sha256:6066e34eb4a44f8d387fd0d3350f4641ae4c5287ee9bda10fdd3f4b0119a52cf" -> "sha256:7a015053948324ec95934c1916cf2e05808fb60349e8808efe3dc030a5e77c6c" [label=""];
  "sha256:7a015053948324ec95934c1916cf2e05808fb60349e8808efe3dc030a5e77c6c" -> "sha256:6f077174b59b213091f2910285f0544a4144d1bf8b913237e7b0b7adafdf06ae" [label=""];
  "sha256:6f077174b59b213091f2910285f0544a4144d1bf8b913237e7b0b7adafdf06ae" -> "sha256:a3392c3964309b551a883a6ac77a5b1e5e60622a8514b2cf48bf462945b20d47" [label=""];
}

