[app/sources/171539646.Dockerfile]
digraph {
  "sha256:4b145f249f45684c1743fe519ab3e3de91b5a41f1a30dfa612cb78d50ac53eef" [label="docker-image://docker.io/library/dctm-base:latest" shape="ellipse"];
  "sha256:79c8ecaaa5f76c4b6dd342fe23fb7e66c6511e23e89279d3cfd2cf4f26acb6c0" [label="local://context" shape="ellipse"];
  "sha256:e346acb74acda1b3b5ecd4890eb95cdfb4788e2599da14655b463402ac7cadfb" [label="copy{src=/bundles, dest=/bundles}" shape="note"];
  "sha256:7f4eb5fab35882a0d73dd266d0186e0d2c9e0928ec15a6206a1aefb57cde357a" [label="/bin/sh -c chown -R dmadmin:dmadmin /bundles" shape="box"];
  "sha256:eb59c8d3f5a94451648ae39f962f61e25a34e0c6d9fd59b39d0bfa1b827da28d" [label="copy{src=/entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:61d1cb3148f2cb36bf1678507bc500262b7f6ad09e0500c0573c2fad1d05524a" [label="/bin/sh -c chown dmadmin:dmadmin ${DOCUMENTUM}/docker-entrypoint.sh  && chmod a+x ${DOCUMENTUM}/docker-entrypoint.sh" shape="box"];
  "sha256:4fcf51066dcfbcdd874aae6a96e2f60fe5e599626768764de2e174431574c3f5" [label="/bin/sh -c mkdir /tmp/ts-install  && tar -xvf /bundles/Thumbnail_Server_7.1_linux.tar -C /tmp/ts-install  && cd /tmp/ts-install  && chmod u+x ./thumbserverLinuxSetup.bin  && ./thumbserverLinuxSetup.bin -config /bundles/tsInstall.ini -silent  && cat install.log  && echo \"done\"" shape="box"];
  "sha256:b98d3da70034765a8d3f1bc62125166758e9022d6d07af37161037a22057e70c" [label="sha256:b98d3da70034765a8d3f1bc62125166758e9022d6d07af37161037a22057e70c" shape="plaintext"];
  "sha256:4b145f249f45684c1743fe519ab3e3de91b5a41f1a30dfa612cb78d50ac53eef" -> "sha256:e346acb74acda1b3b5ecd4890eb95cdfb4788e2599da14655b463402ac7cadfb" [label=""];
  "sha256:79c8ecaaa5f76c4b6dd342fe23fb7e66c6511e23e89279d3cfd2cf4f26acb6c0" -> "sha256:e346acb74acda1b3b5ecd4890eb95cdfb4788e2599da14655b463402ac7cadfb" [label=""];
  "sha256:e346acb74acda1b3b5ecd4890eb95cdfb4788e2599da14655b463402ac7cadfb" -> "sha256:7f4eb5fab35882a0d73dd266d0186e0d2c9e0928ec15a6206a1aefb57cde357a" [label=""];
  "sha256:7f4eb5fab35882a0d73dd266d0186e0d2c9e0928ec15a6206a1aefb57cde357a" -> "sha256:eb59c8d3f5a94451648ae39f962f61e25a34e0c6d9fd59b39d0bfa1b827da28d" [label=""];
  "sha256:79c8ecaaa5f76c4b6dd342fe23fb7e66c6511e23e89279d3cfd2cf4f26acb6c0" -> "sha256:eb59c8d3f5a94451648ae39f962f61e25a34e0c6d9fd59b39d0bfa1b827da28d" [label=""];
  "sha256:eb59c8d3f5a94451648ae39f962f61e25a34e0c6d9fd59b39d0bfa1b827da28d" -> "sha256:61d1cb3148f2cb36bf1678507bc500262b7f6ad09e0500c0573c2fad1d05524a" [label=""];
  "sha256:61d1cb3148f2cb36bf1678507bc500262b7f6ad09e0500c0573c2fad1d05524a" -> "sha256:4fcf51066dcfbcdd874aae6a96e2f60fe5e599626768764de2e174431574c3f5" [label=""];
  "sha256:4fcf51066dcfbcdd874aae6a96e2f60fe5e599626768764de2e174431574c3f5" -> "sha256:b98d3da70034765a8d3f1bc62125166758e9022d6d07af37161037a22057e70c" [label=""];
}

