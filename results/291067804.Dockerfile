[app/sources/291067804.Dockerfile]
digraph {
  "sha256:9d4100389286ca0931845233dc79295444cbbdbda42387fcec29b52564788dae" [label="docker-image://docker.io/library/openjdk:8u151-jre-slim" shape="ellipse"];
  "sha256:e9c93b0a66ce79a1d6911fb1e76f0ac0740adefb1d4da1f05b89297f1935dad5" [label="mkdir{path=/app}" shape="note"];
  "sha256:e7b388642a3ff8fb16c275f4659926122431aa45de02b8b9e79152960e132c82" [label="docker-image://docker.io/library/maven:3.5.2-jdk-8" shape="ellipse"];
  "sha256:bf8ba6c7349985b376997de6a9ad600d752d5b87fe115c7ea6f5a6a2a395d7a1" [label="mkdir{path=/app}" shape="note"];
  "sha256:af1923bf3a5fc9365e0817e98c566be9d31c0f5517013136a8f3cea50cc210d6" [label="local://context" shape="ellipse"];
  "sha256:bf41a140024acac59c68007287d42ee543f6579410546678227f6cec7a0976f3" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:0943be246a9552c24504a697b6f78aa4dd92be57f9e4461a3b995f14ff33a201" [label="/bin/sh -c mvn package" shape="box"];
  "sha256:5ba62e25a62ec7601d769b77645a52fb9ab4cf80adddcf4e90debd7eeb7d9250" [label="copy{src=/app/target/boot2-metrics.jar, dest=/app/}" shape="note"];
  "sha256:39495be6c1a662f43f96bde4004cdca20d6f56a6c99d57b06cd1ba25bf8151a6" [label="sha256:39495be6c1a662f43f96bde4004cdca20d6f56a6c99d57b06cd1ba25bf8151a6" shape="plaintext"];
  "sha256:9d4100389286ca0931845233dc79295444cbbdbda42387fcec29b52564788dae" -> "sha256:e9c93b0a66ce79a1d6911fb1e76f0ac0740adefb1d4da1f05b89297f1935dad5" [label=""];
  "sha256:e7b388642a3ff8fb16c275f4659926122431aa45de02b8b9e79152960e132c82" -> "sha256:bf8ba6c7349985b376997de6a9ad600d752d5b87fe115c7ea6f5a6a2a395d7a1" [label=""];
  "sha256:bf8ba6c7349985b376997de6a9ad600d752d5b87fe115c7ea6f5a6a2a395d7a1" -> "sha256:bf41a140024acac59c68007287d42ee543f6579410546678227f6cec7a0976f3" [label=""];
  "sha256:af1923bf3a5fc9365e0817e98c566be9d31c0f5517013136a8f3cea50cc210d6" -> "sha256:bf41a140024acac59c68007287d42ee543f6579410546678227f6cec7a0976f3" [label=""];
  "sha256:bf41a140024acac59c68007287d42ee543f6579410546678227f6cec7a0976f3" -> "sha256:0943be246a9552c24504a697b6f78aa4dd92be57f9e4461a3b995f14ff33a201" [label=""];
  "sha256:e9c93b0a66ce79a1d6911fb1e76f0ac0740adefb1d4da1f05b89297f1935dad5" -> "sha256:5ba62e25a62ec7601d769b77645a52fb9ab4cf80adddcf4e90debd7eeb7d9250" [label=""];
  "sha256:0943be246a9552c24504a697b6f78aa4dd92be57f9e4461a3b995f14ff33a201" -> "sha256:5ba62e25a62ec7601d769b77645a52fb9ab4cf80adddcf4e90debd7eeb7d9250" [label=""];
  "sha256:5ba62e25a62ec7601d769b77645a52fb9ab4cf80adddcf4e90debd7eeb7d9250" -> "sha256:39495be6c1a662f43f96bde4004cdca20d6f56a6c99d57b06cd1ba25bf8151a6" [label=""];
}

