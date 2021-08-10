[app/sources/252787361.Dockerfile]
digraph {
  "sha256:eeda7058aa5ac94b9cdd5948d0fb1ce6a05ce1a1a961e10fbdae08bfd7b489d0" [label="docker-image://docker.io/homme/gdal:v1.11.1" shape="ellipse"];
  "sha256:d67326806195222fdef018025c4421c8a2ae601141ae93ea7d8e1f8ba1dead2c" [label="/bin/sh -c add-apt-repository -y ppa:chris-lea/node.js" shape="box"];
  "sha256:7488543a9e879fc9a2b9753d045a5fb5248c4383487577d919e7a80fdf1df46e" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:83cbe17134b77f777b8df52f7375d04b46f7574030d2d1c979741c81adb6935b" [label="/bin/sh -c apt-get -y install nodejs" shape="box"];
  "sha256:e3854e2442cf768197319df40b2496df6d0f1e9b15fae3dcea1f4e75fa5c102f" [label="local://context" shape="ellipse"];
  "sha256:aca676f55415d3b4ae727b3c59f8510de1a7e0a4a36133f79e6bd08c3124e1d9" [label="copy{src=/, dest=/ogre}" shape="note"];
  "sha256:ab546826843c3e30c51f68cf4cfc32d175fc85de5a73cd36387119652afd4d27" [label="/bin/sh -c cd /ogre && npm install" shape="box"];
  "sha256:76379d7290dfee6857cd9c07444c05f8b78acd167ac7130bc318a65edb466e39" [label="sha256:76379d7290dfee6857cd9c07444c05f8b78acd167ac7130bc318a65edb466e39" shape="plaintext"];
  "sha256:eeda7058aa5ac94b9cdd5948d0fb1ce6a05ce1a1a961e10fbdae08bfd7b489d0" -> "sha256:d67326806195222fdef018025c4421c8a2ae601141ae93ea7d8e1f8ba1dead2c" [label=""];
  "sha256:d67326806195222fdef018025c4421c8a2ae601141ae93ea7d8e1f8ba1dead2c" -> "sha256:7488543a9e879fc9a2b9753d045a5fb5248c4383487577d919e7a80fdf1df46e" [label=""];
  "sha256:7488543a9e879fc9a2b9753d045a5fb5248c4383487577d919e7a80fdf1df46e" -> "sha256:83cbe17134b77f777b8df52f7375d04b46f7574030d2d1c979741c81adb6935b" [label=""];
  "sha256:83cbe17134b77f777b8df52f7375d04b46f7574030d2d1c979741c81adb6935b" -> "sha256:aca676f55415d3b4ae727b3c59f8510de1a7e0a4a36133f79e6bd08c3124e1d9" [label=""];
  "sha256:e3854e2442cf768197319df40b2496df6d0f1e9b15fae3dcea1f4e75fa5c102f" -> "sha256:aca676f55415d3b4ae727b3c59f8510de1a7e0a4a36133f79e6bd08c3124e1d9" [label=""];
  "sha256:aca676f55415d3b4ae727b3c59f8510de1a7e0a4a36133f79e6bd08c3124e1d9" -> "sha256:ab546826843c3e30c51f68cf4cfc32d175fc85de5a73cd36387119652afd4d27" [label=""];
  "sha256:ab546826843c3e30c51f68cf4cfc32d175fc85de5a73cd36387119652afd4d27" -> "sha256:76379d7290dfee6857cd9c07444c05f8b78acd167ac7130bc318a65edb466e39" [label=""];
}

