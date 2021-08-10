[app/sources/326887479.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label="/bin/sh -c apk update" shape="box"];
  "sha256:c3002b83874a077e3e94cb2aa205367a4f0cd2f5b84d81e829aeffef71d055ad" [label="/bin/sh -c apk add -u bash" shape="box"];
  "sha256:090b250e93ac9d17cf2fd8f59e2a411e5941d4c2aeca2b3f20a701e1dcb5d4ce" [label="local://context" shape="ellipse"];
  "sha256:071f7001d1d38fa95fe5bc936c1b33e7ca6d0fcd67ce6a4ead782ac291718c1d" [label="copy{src=/Dockerfile, dest=/cnab/Dockerfile}" shape="note"];
  "sha256:96a5041e97267e09ef282ee408383c5bebc9cd0ae6da7f830c0e024eada8a862" [label="copy{src=/app, dest=/cnab/app}" shape="note"];
  "sha256:326c69f72743841dd1a13f54584d035d0e328867c3d30169f28740ba46454acc" [label="sha256:326c69f72743841dd1a13f54584d035d0e328867c3d30169f28740ba46454acc" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label=""];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" -> "sha256:c3002b83874a077e3e94cb2aa205367a4f0cd2f5b84d81e829aeffef71d055ad" [label=""];
  "sha256:c3002b83874a077e3e94cb2aa205367a4f0cd2f5b84d81e829aeffef71d055ad" -> "sha256:071f7001d1d38fa95fe5bc936c1b33e7ca6d0fcd67ce6a4ead782ac291718c1d" [label=""];
  "sha256:090b250e93ac9d17cf2fd8f59e2a411e5941d4c2aeca2b3f20a701e1dcb5d4ce" -> "sha256:071f7001d1d38fa95fe5bc936c1b33e7ca6d0fcd67ce6a4ead782ac291718c1d" [label=""];
  "sha256:071f7001d1d38fa95fe5bc936c1b33e7ca6d0fcd67ce6a4ead782ac291718c1d" -> "sha256:96a5041e97267e09ef282ee408383c5bebc9cd0ae6da7f830c0e024eada8a862" [label=""];
  "sha256:090b250e93ac9d17cf2fd8f59e2a411e5941d4c2aeca2b3f20a701e1dcb5d4ce" -> "sha256:96a5041e97267e09ef282ee408383c5bebc9cd0ae6da7f830c0e024eada8a862" [label=""];
  "sha256:96a5041e97267e09ef282ee408383c5bebc9cd0ae6da7f830c0e024eada8a862" -> "sha256:326c69f72743841dd1a13f54584d035d0e328867c3d30169f28740ba46454acc" [label=""];
}

