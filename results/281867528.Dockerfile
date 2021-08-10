[app/sources/281867528.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:499e22449523c30eef4abb35a90d9df255a83df7a4a427741a812f7f0a555f29" [label="/bin/sh -c apt-get update && apt-get install -y build-essential curl libcurl3   && curl -OL http://downloads.dlang.org/releases/2.x/2.077.1/dmd_2.077.1-0_amd64.deb   && apt install ./dmd_2.077.1-0_amd64.deb" shape="box"];
  "sha256:356cc3df4c92897be3702202d9005ca751f6c409fef3409d6488d9275d7d1d95" [label="sha256:356cc3df4c92897be3702202d9005ca751f6c409fef3409d6488d9275d7d1d95" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:499e22449523c30eef4abb35a90d9df255a83df7a4a427741a812f7f0a555f29" [label=""];
  "sha256:499e22449523c30eef4abb35a90d9df255a83df7a4a427741a812f7f0a555f29" -> "sha256:356cc3df4c92897be3702202d9005ca751f6c409fef3409d6488d9275d7d1d95" [label=""];
}

