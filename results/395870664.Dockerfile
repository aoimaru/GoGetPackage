[app/sources/395870664.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:24bd429e985b38d23504c34b8439ee9f5e9f18b071ae1f189fce80c3c3fecb34" [label="/bin/sh -c apt-get update &&   DEBIAN_FRONTEND=noninteractive apt-get install -yq libpython3-dev python3-pip &&   apt-get clean &&   rm -rf /var/lib/apt/lists/* &&   pip3 install asyncoro psutil netifaces" shape="box"];
  "sha256:b8bd5b6daa7243aa07c162d424d4238e40fa354af69d53c4a6a977aa718b9223" [label="sha256:b8bd5b6daa7243aa07c162d424d4238e40fa354af69d53c4a6a977aa718b9223" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:24bd429e985b38d23504c34b8439ee9f5e9f18b071ae1f189fce80c3c3fecb34" [label=""];
  "sha256:24bd429e985b38d23504c34b8439ee9f5e9f18b071ae1f189fce80c3c3fecb34" -> "sha256:b8bd5b6daa7243aa07c162d424d4238e40fa354af69d53c4a6a977aa718b9223" [label=""];
}

