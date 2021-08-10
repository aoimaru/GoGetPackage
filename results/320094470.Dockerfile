[app/sources/320094470.Dockerfile]
digraph {
  "sha256:56d57e52849ecd12718162a28b67d9e926d23d5f5eb4742ff14029bb8cc833c5" [label="docker-image://docker.io/harisekhon/centos-java:latest@sha256:115a4cde232501c265b7931c41d2aaa83d1b439636ad3af8a4cb0a6ec889a8c1" shape="ellipse"];
  "sha256:4da123a30f73088d4b4fe62a83168ffe218e716a7773367ae6bbdb0c746d38f1" [label="mkdir{path=/opt}" shape="note"];
  "sha256:d753adb6d26537894be5f565cb8b06372490752a4ae420f789dda56110a21e85" [label="/bin/sh -c set -euxo pipefail &&     yum install -y tar &&     curl -L \"https://download.jetbrains.com/teamcity/$TAR\" > \"$TAR\" &&     tar zxf \"$TAR\" &&     yum autoremove -y &&     yum clean all &&     rm -rf /var/cache/yum" shape="box"];
  "sha256:3ac263bd306e865e32b8f71f14e16aa5cef20e03c22459aeb960f1419cadff98" [label="sha256:3ac263bd306e865e32b8f71f14e16aa5cef20e03c22459aeb960f1419cadff98" shape="plaintext"];
  "sha256:56d57e52849ecd12718162a28b67d9e926d23d5f5eb4742ff14029bb8cc833c5" -> "sha256:4da123a30f73088d4b4fe62a83168ffe218e716a7773367ae6bbdb0c746d38f1" [label=""];
  "sha256:4da123a30f73088d4b4fe62a83168ffe218e716a7773367ae6bbdb0c746d38f1" -> "sha256:d753adb6d26537894be5f565cb8b06372490752a4ae420f789dda56110a21e85" [label=""];
  "sha256:d753adb6d26537894be5f565cb8b06372490752a4ae420f789dda56110a21e85" -> "sha256:3ac263bd306e865e32b8f71f14e16aa5cef20e03c22459aeb960f1419cadff98" [label=""];
}

