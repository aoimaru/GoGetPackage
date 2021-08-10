[app/sources/252788213.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label="/bin/sh -c apk update" shape="box"];
  "sha256:a896b5e8e1c6b5e50d89519b40189c952ff7d96357e5ad5d5bb2a69881a4cede" [label="/bin/sh -c apk add bash" shape="box"];
  "sha256:e8137d7e7fef7cfb8c6d780d5f812ef0b5f863f93b26ef5e7d93a24cd2be3daa" [label="/bin/sh -c apk add openjdk8" shape="box"];
  "sha256:5f9dba5912ce430d3128b8ec0468c9902a55521ff4fcd6820eb160553d8d93ae" [label="/bin/sh -c apk add apache-ant --update-cache \\--repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ \\--allow-untrusted" shape="box"];
  "sha256:aa9a9617ee427e63aac66d0ba20b9a1dd784b4ec2f6d6a08281c86fc6f8f01bf" [label="local://context" shape="ellipse"];
  "sha256:169caa4c65c9482364817cec8977c85615469dc39345f6a3bf968f05213611a3" [label="copy{src=/Ant_libs/bsf.jar, dest=/usr/share/java/apache-ant/lib/}" shape="note"];
  "sha256:257cbb0d9748d58c3e1c80be7c8922203fb4f639323fe5f5dac07a663cdb4379" [label="copy{src=/Ant_libs/js.jar, dest=/usr/share/java/apache-ant/lib/}" shape="note"];
  "sha256:425eeeca11546ecf1f1d8fd2a9061eb2b952b4a7513cfdd4679b8c91a7c83356" [label="copy{src=/Ant_libs/commons-logging-1.2.jar, dest=/usr/share/java/apache-ant/lib/}" shape="note"];
  "sha256:32d711cdc7799a4ab2f13848233646e2eb743a089c1abd4ee6261ddb4f990530" [label="sha256:32d711cdc7799a4ab2f13848233646e2eb743a089c1abd4ee6261ddb4f990530" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label=""];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" -> "sha256:a896b5e8e1c6b5e50d89519b40189c952ff7d96357e5ad5d5bb2a69881a4cede" [label=""];
  "sha256:a896b5e8e1c6b5e50d89519b40189c952ff7d96357e5ad5d5bb2a69881a4cede" -> "sha256:e8137d7e7fef7cfb8c6d780d5f812ef0b5f863f93b26ef5e7d93a24cd2be3daa" [label=""];
  "sha256:e8137d7e7fef7cfb8c6d780d5f812ef0b5f863f93b26ef5e7d93a24cd2be3daa" -> "sha256:5f9dba5912ce430d3128b8ec0468c9902a55521ff4fcd6820eb160553d8d93ae" [label=""];
  "sha256:5f9dba5912ce430d3128b8ec0468c9902a55521ff4fcd6820eb160553d8d93ae" -> "sha256:169caa4c65c9482364817cec8977c85615469dc39345f6a3bf968f05213611a3" [label=""];
  "sha256:aa9a9617ee427e63aac66d0ba20b9a1dd784b4ec2f6d6a08281c86fc6f8f01bf" -> "sha256:169caa4c65c9482364817cec8977c85615469dc39345f6a3bf968f05213611a3" [label=""];
  "sha256:169caa4c65c9482364817cec8977c85615469dc39345f6a3bf968f05213611a3" -> "sha256:257cbb0d9748d58c3e1c80be7c8922203fb4f639323fe5f5dac07a663cdb4379" [label=""];
  "sha256:aa9a9617ee427e63aac66d0ba20b9a1dd784b4ec2f6d6a08281c86fc6f8f01bf" -> "sha256:257cbb0d9748d58c3e1c80be7c8922203fb4f639323fe5f5dac07a663cdb4379" [label=""];
  "sha256:257cbb0d9748d58c3e1c80be7c8922203fb4f639323fe5f5dac07a663cdb4379" -> "sha256:425eeeca11546ecf1f1d8fd2a9061eb2b952b4a7513cfdd4679b8c91a7c83356" [label=""];
  "sha256:aa9a9617ee427e63aac66d0ba20b9a1dd784b4ec2f6d6a08281c86fc6f8f01bf" -> "sha256:425eeeca11546ecf1f1d8fd2a9061eb2b952b4a7513cfdd4679b8c91a7c83356" [label=""];
  "sha256:425eeeca11546ecf1f1d8fd2a9061eb2b952b4a7513cfdd4679b8c91a7c83356" -> "sha256:32d711cdc7799a4ab2f13848233646e2eb743a089c1abd4ee6261ddb4f990530" [label=""];
}

