[app/sources/232755669.Dockerfile]
digraph {
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" [label="docker-image://docker.io/library/node:0.10" shape="ellipse"];
  "sha256:9c4425ee9468bdafed7ccaa70b3dddc413b150203b1615f883fb44956980fcfc" [label="/bin/sh -c mkdir app" shape="box"];
  "sha256:c7f2f2462dd8b8ea3999aa08b101aecd098789b553367f2ad2734ba0fa7d4d5a" [label="local://context" shape="ellipse"];
  "sha256:67e587f1b96f718ac1739274f1a1755e93c5e564c36a7b5706e08ce2cba22199" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:9be01d2407bc8f6173938f274e35fe0dda8a5c397226f43a458902c1f90bf6cc" [label="mkdir{path=/app}" shape="note"];
  "sha256:e5e95e225b140fe41a83a02c2f2621a33e02c9a2cddaa678a7108a19141d153a" [label="/bin/sh -c npm install" shape="box"];
  "sha256:639aa4966d9e68c1eb61c51cf36c2de65e5e28d49fcb30969f61b2e803c0c433" [label="/bin/sh -c npm install webpack@\"1.11\"" shape="box"];
  "sha256:b3f7721931f61d22ecd5f7f0d01c96e6d6fc531392e0872afc1c860e921cfb55" [label="sha256:b3f7721931f61d22ecd5f7f0d01c96e6d6fc531392e0872afc1c860e921cfb55" shape="plaintext"];
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" -> "sha256:9c4425ee9468bdafed7ccaa70b3dddc413b150203b1615f883fb44956980fcfc" [label=""];
  "sha256:9c4425ee9468bdafed7ccaa70b3dddc413b150203b1615f883fb44956980fcfc" -> "sha256:67e587f1b96f718ac1739274f1a1755e93c5e564c36a7b5706e08ce2cba22199" [label=""];
  "sha256:c7f2f2462dd8b8ea3999aa08b101aecd098789b553367f2ad2734ba0fa7d4d5a" -> "sha256:67e587f1b96f718ac1739274f1a1755e93c5e564c36a7b5706e08ce2cba22199" [label=""];
  "sha256:67e587f1b96f718ac1739274f1a1755e93c5e564c36a7b5706e08ce2cba22199" -> "sha256:9be01d2407bc8f6173938f274e35fe0dda8a5c397226f43a458902c1f90bf6cc" [label=""];
  "sha256:9be01d2407bc8f6173938f274e35fe0dda8a5c397226f43a458902c1f90bf6cc" -> "sha256:e5e95e225b140fe41a83a02c2f2621a33e02c9a2cddaa678a7108a19141d153a" [label=""];
  "sha256:e5e95e225b140fe41a83a02c2f2621a33e02c9a2cddaa678a7108a19141d153a" -> "sha256:639aa4966d9e68c1eb61c51cf36c2de65e5e28d49fcb30969f61b2e803c0c433" [label=""];
  "sha256:639aa4966d9e68c1eb61c51cf36c2de65e5e28d49fcb30969f61b2e803c0c433" -> "sha256:b3f7721931f61d22ecd5f7f0d01c96e6d6fc531392e0872afc1c860e921cfb55" [label=""];
}

