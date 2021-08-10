[app/sources/342440434.Dockerfile]
digraph {
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" [label="docker-image://docker.io/library/debian:stable-slim" shape="ellipse"];
  "sha256:e59ee0a74f9fbf52bb4d4f887472e17a9e4b5da78ab4fc369898ddf8af51d4a7" [label="/bin/sh -c apt-get update -qqy   && apt-get -qqy install        dumb-init gnupg wget ca-certificates apt-transport-https        ttf-wqy-zenhei   && rm -rf /var/lib/apt/lists/* /var/cache/apt/*" shape="box"];
  "sha256:78a59af342dcd828d18a1db7e327dc941ab7687b801cac8492b0117985d3507b" [label="/bin/sh -c wget -qO- https://dl.google.com/linux/linux_signing_key.pub | apt-key add -   && echo \"deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main\" >> /etc/apt/sources.list.d/google-chrome.list   && apt-get update -y   && apt-get -y install google-chrome-stable   && rm /etc/apt/sources.list.d/google-chrome.list   && rm -rf /var/lib/apt/lists/* /var/cache/apt/*" shape="box"];
  "sha256:721c78bad176bce63fd3599dad5737e14baa75eb7732127bb77bca2b3d3aed28" [label="/bin/sh -c useradd headless --shell /bin/bash --create-home   && usermod -a -G sudo headless   && echo 'ALL ALL = (ALL) NOPASSWD: ALL' >> /etc/sudoers   && echo 'headless:nopassword' | chpasswd" shape="box"];
  "sha256:511a16d8bab092e2e30c5e0acf0449500d1bdb1a6c57ff2d7f7554079a1582ce" [label="/bin/sh -c mkdir /data && chown -R headless:headless /data" shape="box"];
  "sha256:cc1d6451e133562cbdfe83c68c99b914804d8f35e144472bba7f679a70505f28" [label="sha256:cc1d6451e133562cbdfe83c68c99b914804d8f35e144472bba7f679a70505f28" shape="plaintext"];
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" -> "sha256:e59ee0a74f9fbf52bb4d4f887472e17a9e4b5da78ab4fc369898ddf8af51d4a7" [label=""];
  "sha256:e59ee0a74f9fbf52bb4d4f887472e17a9e4b5da78ab4fc369898ddf8af51d4a7" -> "sha256:78a59af342dcd828d18a1db7e327dc941ab7687b801cac8492b0117985d3507b" [label=""];
  "sha256:78a59af342dcd828d18a1db7e327dc941ab7687b801cac8492b0117985d3507b" -> "sha256:721c78bad176bce63fd3599dad5737e14baa75eb7732127bb77bca2b3d3aed28" [label=""];
  "sha256:721c78bad176bce63fd3599dad5737e14baa75eb7732127bb77bca2b3d3aed28" -> "sha256:511a16d8bab092e2e30c5e0acf0449500d1bdb1a6c57ff2d7f7554079a1582ce" [label=""];
  "sha256:511a16d8bab092e2e30c5e0acf0449500d1bdb1a6c57ff2d7f7554079a1582ce" -> "sha256:cc1d6451e133562cbdfe83c68c99b914804d8f35e144472bba7f679a70505f28" [label=""];
}

