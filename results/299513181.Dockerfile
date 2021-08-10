[app/sources/299513181.Dockerfile]
digraph {
  "sha256:3a6e1790e713f28f6a410957adcc9e94b1e4dd65250cb0e00864be70ff86c7ee" [label="docker-image://docker.io/library/debian:wheezy-slim" shape="ellipse"];
  "sha256:66c176aac0e1c0f36ebbaf2e2f35c6ba610f429e65acaf1863757119bf57cd3b" [label="mkdir{path=/xware}" shape="note"];
  "sha256:efd0ffa8a48de6d1d4d7d0f68112c64bba6f30009bb98540ecd0f3c58aaa18d6" [label="local://context" shape="ellipse"];
  "sha256:1e2f08623a55903a87ec9c7a67dcb25dc3441c65d48a48dca83fc4546f5474ad" [label="copy{src=/Xware1.0.31_x86_32_glibc.tar.gz, dest=/xware}" shape="note"];
  "sha256:711240512c8cc67a8f65500b8161f86ed36654d802736bc1bf58d6142ae8c3ab" [label="copy{src=/thunder_mounts.cfg, dest=/usr/local/thunder/}" shape="note"];
  "sha256:d6b113fe22459e64939df0b83a190476f2d1431f3726c826f023969cef2e6ab7" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends libc6-i386 lib32z1 libncursesw5 libprocps0 procps && \tchmod u+x portal &&     apt-get -y autoremove && apt-get clean -y && apt-get autoclean -y &&     rm -rf var/lib/apt/lists/* var/cache/apt/* var/log/* /xware/*.deb" shape="box"];
  "sha256:2363a5064ebb1b542fbe8cbd0505c098a7f5e717808618068abf934d85f1cad7" [label="copy{src=/monitor.sh, dest=/xware}" shape="note"];
  "sha256:bcf6ad4d6f960d005c6d982171f9f4157104821ebd9577ad436c39bef16e0c36" [label="/bin/sh -c chmod u+x monitor.sh" shape="box"];
  "sha256:2698701e6215fb90f76cfa25643ed4a868e6418c10495a39716caa26fbd6c202" [label="sha256:2698701e6215fb90f76cfa25643ed4a868e6418c10495a39716caa26fbd6c202" shape="plaintext"];
  "sha256:3a6e1790e713f28f6a410957adcc9e94b1e4dd65250cb0e00864be70ff86c7ee" -> "sha256:66c176aac0e1c0f36ebbaf2e2f35c6ba610f429e65acaf1863757119bf57cd3b" [label=""];
  "sha256:66c176aac0e1c0f36ebbaf2e2f35c6ba610f429e65acaf1863757119bf57cd3b" -> "sha256:1e2f08623a55903a87ec9c7a67dcb25dc3441c65d48a48dca83fc4546f5474ad" [label=""];
  "sha256:efd0ffa8a48de6d1d4d7d0f68112c64bba6f30009bb98540ecd0f3c58aaa18d6" -> "sha256:1e2f08623a55903a87ec9c7a67dcb25dc3441c65d48a48dca83fc4546f5474ad" [label=""];
  "sha256:1e2f08623a55903a87ec9c7a67dcb25dc3441c65d48a48dca83fc4546f5474ad" -> "sha256:711240512c8cc67a8f65500b8161f86ed36654d802736bc1bf58d6142ae8c3ab" [label=""];
  "sha256:efd0ffa8a48de6d1d4d7d0f68112c64bba6f30009bb98540ecd0f3c58aaa18d6" -> "sha256:711240512c8cc67a8f65500b8161f86ed36654d802736bc1bf58d6142ae8c3ab" [label=""];
  "sha256:711240512c8cc67a8f65500b8161f86ed36654d802736bc1bf58d6142ae8c3ab" -> "sha256:d6b113fe22459e64939df0b83a190476f2d1431f3726c826f023969cef2e6ab7" [label=""];
  "sha256:d6b113fe22459e64939df0b83a190476f2d1431f3726c826f023969cef2e6ab7" -> "sha256:2363a5064ebb1b542fbe8cbd0505c098a7f5e717808618068abf934d85f1cad7" [label=""];
  "sha256:efd0ffa8a48de6d1d4d7d0f68112c64bba6f30009bb98540ecd0f3c58aaa18d6" -> "sha256:2363a5064ebb1b542fbe8cbd0505c098a7f5e717808618068abf934d85f1cad7" [label=""];
  "sha256:2363a5064ebb1b542fbe8cbd0505c098a7f5e717808618068abf934d85f1cad7" -> "sha256:bcf6ad4d6f960d005c6d982171f9f4157104821ebd9577ad436c39bef16e0c36" [label=""];
  "sha256:bcf6ad4d6f960d005c6d982171f9f4157104821ebd9577ad436c39bef16e0c36" -> "sha256:2698701e6215fb90f76cfa25643ed4a868e6418c10495a39716caa26fbd6c202" [label=""];
}

