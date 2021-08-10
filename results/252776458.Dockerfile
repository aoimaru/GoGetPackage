[app/sources/252776458.Dockerfile]
digraph {
  "sha256:3a6e1790e713f28f6a410957adcc9e94b1e4dd65250cb0e00864be70ff86c7ee" [label="docker-image://docker.io/library/debian:wheezy-slim" shape="ellipse"];
  "sha256:516f9625530aa4e53d8d30d0d5fd9609804406e76e854494dd3c03d07bc50caf" [label="/bin/sh -c apt-get update && apt-get -y install gcc git libssl-dev make && cd /tmp && git clone https://github.com/wg/wrk.git && cd wrk/ && make && cp wrk /usr/local/bin/ && rm -rf /tmp/wrk && apt-get -y remove gcc git libssl-dev make" shape="box"];
  "sha256:cd80e262b8b894264f6376cff92adbb34adfd27b48b3a2449276456251b19c16" [label="sha256:cd80e262b8b894264f6376cff92adbb34adfd27b48b3a2449276456251b19c16" shape="plaintext"];
  "sha256:3a6e1790e713f28f6a410957adcc9e94b1e4dd65250cb0e00864be70ff86c7ee" -> "sha256:516f9625530aa4e53d8d30d0d5fd9609804406e76e854494dd3c03d07bc50caf" [label=""];
  "sha256:516f9625530aa4e53d8d30d0d5fd9609804406e76e854494dd3c03d07bc50caf" -> "sha256:cd80e262b8b894264f6376cff92adbb34adfd27b48b3a2449276456251b19c16" [label=""];
}

