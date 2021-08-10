[app/sources/470640967.Dockerfile]
digraph {
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" [label="docker-image://docker.io/library/openjdk:8" shape="ellipse"];
  "sha256:5927a66424ee8d07c6bda38b9b075de4f6e1740b22a4ec5cc2cb0a365bf41114" [label="/bin/sh -c GRPC_HEALTH_PROBE_VERSION=v0.1.0-alpha.1 &&     wget -qO/bin/grpc_health_probe https://github.com/grpc-ecosystem/grpc-health-probe/releases/download/${GRPC_HEALTH_PROBE_VERSION}/grpc_health_probe-linux-amd64 &&     chmod +x /bin/grpc_health_probe" shape="box"];
  "sha256:fe19530ea92f82c3fa4b6a73ea91bb713ddcddefbcf0ad5b029e73125453474f" [label="mkdir{path=/app}" shape="note"];
  "sha256:5908711fbe84c5c877abf4ddc7b8c4e3a8a61b4055489cef1a3b52e6223142c1" [label="local://context" shape="ellipse"];
  "sha256:f04d9d53d432bd49be531f1484a672d8882bef0186097d4203aa80cf42d45b06" [label="copy{src=/build.gradle, dest=/app/},copy{src=/gradlew, dest=/app/}" shape="note"];
  "sha256:bca9d9dcb1e977597e7cfde0eaef2c3050d3758b6d9c9b1813887e3e16ad8088" [label="copy{src=/gradle, dest=/app/gradle}" shape="note"];
  "sha256:aa1aa4a5918c55d4cace22a5fea1059e44654a737f78ba0111f87f49479e0d44" [label="/bin/sh -c ./gradlew downloadRepos" shape="box"];
  "sha256:3bd46ef1263e434dd6474976d092aaffcd3bae69762956f1d6b8066f3b8462f9" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:10f25f95a48e9a2bdf1ae4cbe45d4189568e653baafbc7de65e3cdaa0c78a8ad" [label="/bin/sh -c ./gradlew installDist" shape="box"];
  "sha256:03d74f31dfacc63b4ca1b2a7b041d531bc1d8915712b3be244c994a55b293139" [label="sha256:03d74f31dfacc63b4ca1b2a7b041d531bc1d8915712b3be244c994a55b293139" shape="plaintext"];
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" -> "sha256:5927a66424ee8d07c6bda38b9b075de4f6e1740b22a4ec5cc2cb0a365bf41114" [label=""];
  "sha256:5927a66424ee8d07c6bda38b9b075de4f6e1740b22a4ec5cc2cb0a365bf41114" -> "sha256:fe19530ea92f82c3fa4b6a73ea91bb713ddcddefbcf0ad5b029e73125453474f" [label=""];
  "sha256:fe19530ea92f82c3fa4b6a73ea91bb713ddcddefbcf0ad5b029e73125453474f" -> "sha256:f04d9d53d432bd49be531f1484a672d8882bef0186097d4203aa80cf42d45b06" [label=""];
  "sha256:5908711fbe84c5c877abf4ddc7b8c4e3a8a61b4055489cef1a3b52e6223142c1" -> "sha256:f04d9d53d432bd49be531f1484a672d8882bef0186097d4203aa80cf42d45b06" [label=""];
  "sha256:f04d9d53d432bd49be531f1484a672d8882bef0186097d4203aa80cf42d45b06" -> "sha256:bca9d9dcb1e977597e7cfde0eaef2c3050d3758b6d9c9b1813887e3e16ad8088" [label=""];
  "sha256:5908711fbe84c5c877abf4ddc7b8c4e3a8a61b4055489cef1a3b52e6223142c1" -> "sha256:bca9d9dcb1e977597e7cfde0eaef2c3050d3758b6d9c9b1813887e3e16ad8088" [label=""];
  "sha256:bca9d9dcb1e977597e7cfde0eaef2c3050d3758b6d9c9b1813887e3e16ad8088" -> "sha256:aa1aa4a5918c55d4cace22a5fea1059e44654a737f78ba0111f87f49479e0d44" [label=""];
  "sha256:aa1aa4a5918c55d4cace22a5fea1059e44654a737f78ba0111f87f49479e0d44" -> "sha256:3bd46ef1263e434dd6474976d092aaffcd3bae69762956f1d6b8066f3b8462f9" [label=""];
  "sha256:5908711fbe84c5c877abf4ddc7b8c4e3a8a61b4055489cef1a3b52e6223142c1" -> "sha256:3bd46ef1263e434dd6474976d092aaffcd3bae69762956f1d6b8066f3b8462f9" [label=""];
  "sha256:3bd46ef1263e434dd6474976d092aaffcd3bae69762956f1d6b8066f3b8462f9" -> "sha256:10f25f95a48e9a2bdf1ae4cbe45d4189568e653baafbc7de65e3cdaa0c78a8ad" [label=""];
  "sha256:10f25f95a48e9a2bdf1ae4cbe45d4189568e653baafbc7de65e3cdaa0c78a8ad" -> "sha256:03d74f31dfacc63b4ca1b2a7b041d531bc1d8915712b3be244c994a55b293139" [label=""];
}

