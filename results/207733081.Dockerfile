[app/sources/207733081.Dockerfile]
digraph {
  "sha256:292de17e4e7f7794e3069e98e03c82659e5ac14cf7cd2daac42a75c784bf241a" [label="docker-image://docker.io/library/openjdk:11-slim" shape="ellipse"];
  "sha256:a9f793ea8363310554d6cb92d3dfdf720ed5afefc91d2bef53e98884cfbcf7eb" [label="docker-image://docker.io/library/maven:3.5.4-jdk-11-slim" shape="ellipse"];
  "sha256:fae1a230ea473363ef1fe69b9709e29c8a6936ea324b511f7194385d9d41f26f" [label="local://context" shape="ellipse"];
  "sha256:1f4690dcc745910f1ae5ad18e3ff5336716c17a47b81393adf02696635133d23" [label="copy{src=/service, dest=/opt/flowchat/service}" shape="note"];
  "sha256:f748184e39ce3e5b3dacc4295ac31496e5b4deb7f946664ad1678f00c5c38fa2" [label="docker-image://docker.io/library/node:8.12.0" shape="ellipse"];
  "sha256:b0eea907d5b1dc79d6aab4de3e7802ccc895c082f975cd288a74cfc65491e843" [label="copy{src=/ui, dest=/opt/flowchat/ui}" shape="note"];
  "sha256:909b83cdf4fcdf98ef4606836956006e682ac3ef906db45955c8fb5a76125e3e" [label="mkdir{path=/opt/flowchat/ui}" shape="note"];
  "sha256:7d888c296d3376c9b4757e93f21592d8229cc8e65c1db8564e80aea685795b7f" [label="/bin/sh -c echo \"ENDPOINT_NAME is ${ENDPOINT_NAME}\"" shape="box"];
  "sha256:f78899e887999d8f41beb699167ae782c5f009f8b28a63ebae67e5f598c20b13" [label="/bin/sh -c echo \"export const environment = {production: true,endpoint: '${ENDPOINT_NAME}/',websocket: 'ws`echo ${ENDPOINT_NAME}|cut -b 5-999`/poll'};\" > src/environments/environment.prod.ts" shape="box"];
  "sha256:051f4888e5d97b45b710567afb7025ffeddc5d1fe7b4e4f24f0207bd40e02510" [label="/bin/sh -c cat src/environments/environment.prod.ts" shape="box"];
  "sha256:4529ecb6b6d5ee55b7245fb33c6343ec8cd94ddbaef1c47faf0fa7c60022896c" [label="/bin/sh -c yarn" shape="box"];
  "sha256:47ad9e417a0b79dff669927072dc1477832701edb2e6759dc079371be59b4daf" [label="/bin/sh -c yarn build" shape="box"];
  "sha256:2fb2a3ce36cfd6ab36b3a7e491f553237ebd4c834373f58914f691d498bd02de" [label="/bin/sh -c ls /opt/flowchat/ui/dist" shape="box"];
  "sha256:31b2b5f876083b9e378d871a4388ab16405db7923bb998b39630f3bce2ffa25e" [label="copy{src=/opt/flowchat/ui/dist, dest=/opt/flowchat/service/src/main/resources/dist/}" shape="note"];
  "sha256:8b1c719809096bafe4320c7c6e953e82c6329e45b7bbcf46bfd584774aa59455" [label="mkdir{path=/opt/flowchat/service}" shape="note"];
  "sha256:a6f823da678166a16acd679f5430d1b7f9fc846770e74744430e073e01a94ace" [label="/bin/sh -c mvn clean install -DskipTests -Dliquibase.skip" shape="box"];
  "sha256:ec86283db9a33b402c3f928d6ae757d0fa7cd4f4606657bb2737bb1f73710ffb" [label="copy{src=/opt/flowchat/service/target/flowchat.jar, dest=/opt/flowchat.jar}" shape="note"];
  "sha256:d3513979d181ba255d3b560cdae8d2d9b28d16367bff02a11b86d5110f2ce79f" [label="sha256:d3513979d181ba255d3b560cdae8d2d9b28d16367bff02a11b86d5110f2ce79f" shape="plaintext"];
  "sha256:a9f793ea8363310554d6cb92d3dfdf720ed5afefc91d2bef53e98884cfbcf7eb" -> "sha256:1f4690dcc745910f1ae5ad18e3ff5336716c17a47b81393adf02696635133d23" [label=""];
  "sha256:fae1a230ea473363ef1fe69b9709e29c8a6936ea324b511f7194385d9d41f26f" -> "sha256:1f4690dcc745910f1ae5ad18e3ff5336716c17a47b81393adf02696635133d23" [label=""];
  "sha256:f748184e39ce3e5b3dacc4295ac31496e5b4deb7f946664ad1678f00c5c38fa2" -> "sha256:b0eea907d5b1dc79d6aab4de3e7802ccc895c082f975cd288a74cfc65491e843" [label=""];
  "sha256:fae1a230ea473363ef1fe69b9709e29c8a6936ea324b511f7194385d9d41f26f" -> "sha256:b0eea907d5b1dc79d6aab4de3e7802ccc895c082f975cd288a74cfc65491e843" [label=""];
  "sha256:b0eea907d5b1dc79d6aab4de3e7802ccc895c082f975cd288a74cfc65491e843" -> "sha256:909b83cdf4fcdf98ef4606836956006e682ac3ef906db45955c8fb5a76125e3e" [label=""];
  "sha256:909b83cdf4fcdf98ef4606836956006e682ac3ef906db45955c8fb5a76125e3e" -> "sha256:7d888c296d3376c9b4757e93f21592d8229cc8e65c1db8564e80aea685795b7f" [label=""];
  "sha256:7d888c296d3376c9b4757e93f21592d8229cc8e65c1db8564e80aea685795b7f" -> "sha256:f78899e887999d8f41beb699167ae782c5f009f8b28a63ebae67e5f598c20b13" [label=""];
  "sha256:f78899e887999d8f41beb699167ae782c5f009f8b28a63ebae67e5f598c20b13" -> "sha256:051f4888e5d97b45b710567afb7025ffeddc5d1fe7b4e4f24f0207bd40e02510" [label=""];
  "sha256:051f4888e5d97b45b710567afb7025ffeddc5d1fe7b4e4f24f0207bd40e02510" -> "sha256:4529ecb6b6d5ee55b7245fb33c6343ec8cd94ddbaef1c47faf0fa7c60022896c" [label=""];
  "sha256:4529ecb6b6d5ee55b7245fb33c6343ec8cd94ddbaef1c47faf0fa7c60022896c" -> "sha256:47ad9e417a0b79dff669927072dc1477832701edb2e6759dc079371be59b4daf" [label=""];
  "sha256:47ad9e417a0b79dff669927072dc1477832701edb2e6759dc079371be59b4daf" -> "sha256:2fb2a3ce36cfd6ab36b3a7e491f553237ebd4c834373f58914f691d498bd02de" [label=""];
  "sha256:1f4690dcc745910f1ae5ad18e3ff5336716c17a47b81393adf02696635133d23" -> "sha256:31b2b5f876083b9e378d871a4388ab16405db7923bb998b39630f3bce2ffa25e" [label=""];
  "sha256:2fb2a3ce36cfd6ab36b3a7e491f553237ebd4c834373f58914f691d498bd02de" -> "sha256:31b2b5f876083b9e378d871a4388ab16405db7923bb998b39630f3bce2ffa25e" [label=""];
  "sha256:31b2b5f876083b9e378d871a4388ab16405db7923bb998b39630f3bce2ffa25e" -> "sha256:8b1c719809096bafe4320c7c6e953e82c6329e45b7bbcf46bfd584774aa59455" [label=""];
  "sha256:8b1c719809096bafe4320c7c6e953e82c6329e45b7bbcf46bfd584774aa59455" -> "sha256:a6f823da678166a16acd679f5430d1b7f9fc846770e74744430e073e01a94ace" [label=""];
  "sha256:292de17e4e7f7794e3069e98e03c82659e5ac14cf7cd2daac42a75c784bf241a" -> "sha256:ec86283db9a33b402c3f928d6ae757d0fa7cd4f4606657bb2737bb1f73710ffb" [label=""];
  "sha256:a6f823da678166a16acd679f5430d1b7f9fc846770e74744430e073e01a94ace" -> "sha256:ec86283db9a33b402c3f928d6ae757d0fa7cd4f4606657bb2737bb1f73710ffb" [label=""];
  "sha256:ec86283db9a33b402c3f928d6ae757d0fa7cd4f4606657bb2737bb1f73710ffb" -> "sha256:d3513979d181ba255d3b560cdae8d2d9b28d16367bff02a11b86d5110f2ce79f" [label=""];
}

