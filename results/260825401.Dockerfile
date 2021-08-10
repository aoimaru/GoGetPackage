[app/sources/260825401.Dockerfile]
digraph {
  "sha256:cdd6651e430d9f63f8e92317bc311a199105927aea2ea517e67254a5caf4231e" [label="docker-image://docker.io/adoptopenjdk/openjdk8-openj9:x86_64-ubuntu-jdk8u181-b13_openj9-0.9.0" shape="ellipse"];
  "sha256:b2f6a76e71904dd9621e97df410680eefbc4355e2f401a8d02cf5a5ad949ceb7" [label="/bin/sh -c rm -rf /var/lib/apt/lists/* && apt-get clean && apt-get update \t&& apt-get install -y --no-install-recommends locales \t&& rm -rf /var/lib/apt/lists/* \t&& locale-gen en_US.UTF-8" shape="box"];
  "sha256:9c6ebaa78d8f7cfde1c1d5e195961ede932b9ba1c239d0b1a540b4031eb44617" [label="local://context" shape="ellipse"];
  "sha256:7d47ca75577997ed9851eaaab348899322c3c39daed2cd993d8410cc7cdb8c91" [label="copy{src=/proxy, dest=/javaAction}" shape="note"];
  "sha256:227eab6a547226c0b582ead22389e23d200048fb10be81465e1de76b466fe1d1" [label="/bin/sh -c cd /javaAction \t&& rm -rf .classpath .gitignore .gradle .project .settings Dockerfile build \t&& ./gradlew oneJar \t&& rm -rf /javaAction/src \t&& ./compileClassCache.sh" shape="box"];
  "sha256:835914a6ea589b64fca585afff8516daef5bfaa2bfa99955f693eaa3b7250f93" [label="sha256:835914a6ea589b64fca585afff8516daef5bfaa2bfa99955f693eaa3b7250f93" shape="plaintext"];
  "sha256:cdd6651e430d9f63f8e92317bc311a199105927aea2ea517e67254a5caf4231e" -> "sha256:b2f6a76e71904dd9621e97df410680eefbc4355e2f401a8d02cf5a5ad949ceb7" [label=""];
  "sha256:b2f6a76e71904dd9621e97df410680eefbc4355e2f401a8d02cf5a5ad949ceb7" -> "sha256:7d47ca75577997ed9851eaaab348899322c3c39daed2cd993d8410cc7cdb8c91" [label=""];
  "sha256:9c6ebaa78d8f7cfde1c1d5e195961ede932b9ba1c239d0b1a540b4031eb44617" -> "sha256:7d47ca75577997ed9851eaaab348899322c3c39daed2cd993d8410cc7cdb8c91" [label=""];
  "sha256:7d47ca75577997ed9851eaaab348899322c3c39daed2cd993d8410cc7cdb8c91" -> "sha256:227eab6a547226c0b582ead22389e23d200048fb10be81465e1de76b466fe1d1" [label=""];
  "sha256:227eab6a547226c0b582ead22389e23d200048fb10be81465e1de76b466fe1d1" -> "sha256:835914a6ea589b64fca585afff8516daef5bfaa2bfa99955f693eaa3b7250f93" [label=""];
}

