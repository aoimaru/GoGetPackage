[app/sources/469282370.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:eccd91fefaf45fcfd29cba2f89f919ed13e2ec0c50628d7c580076e7668a917d" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:07c7ee62173d3790ed5eed07b6d9bb33a3771dc87940eb310efc52e1fbc05787" [label="/bin/sh -c apt-get -qq install -y   cdecl   clang   clang-tools   g++=4:7.3.0-3ubuntu2.1   gcc   git   lldb   make   man   manpages   manpages-dev   manpages-posix   manpages-posix-dev   perl   valgrind   vim   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e9fa2da6d775f9b4a1487d765e50642c13a0a1b62147b1332b22aa84f25fc55c" [label="/bin/sh -c cd /tmp && git clone http://git.kernel.org/pub/scm/docs/man-pages/man-pages" shape="box"];
  "sha256:55774221fc36c7126f16bfcd76ad12260c7614d06d34bc1a591ba2554d27e7a0" [label="/bin/sh -c cd /tmp/man-pages && make install" shape="box"];
  "sha256:94de44616c8c6bbec05477b5ba6ab995cf07f4fb1b7417902b3c8efbb2a1e0da" [label="/bin/sh -c mandb" shape="box"];
  "sha256:3dcf46f7942742f62fb9a0c5650effd67f495aa37de64261725e957da4b30703" [label="/bin/sh -c rm -r /tmp/man-pages" shape="box"];
  "sha256:8a72c6ff05e3d2f5d07b4f4c19883104144956af958336e02a9ecfa7a8ab9419" [label="sha256:8a72c6ff05e3d2f5d07b4f4c19883104144956af958336e02a9ecfa7a8ab9419" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:eccd91fefaf45fcfd29cba2f89f919ed13e2ec0c50628d7c580076e7668a917d" [label=""];
  "sha256:eccd91fefaf45fcfd29cba2f89f919ed13e2ec0c50628d7c580076e7668a917d" -> "sha256:07c7ee62173d3790ed5eed07b6d9bb33a3771dc87940eb310efc52e1fbc05787" [label=""];
  "sha256:07c7ee62173d3790ed5eed07b6d9bb33a3771dc87940eb310efc52e1fbc05787" -> "sha256:e9fa2da6d775f9b4a1487d765e50642c13a0a1b62147b1332b22aa84f25fc55c" [label=""];
  "sha256:e9fa2da6d775f9b4a1487d765e50642c13a0a1b62147b1332b22aa84f25fc55c" -> "sha256:55774221fc36c7126f16bfcd76ad12260c7614d06d34bc1a591ba2554d27e7a0" [label=""];
  "sha256:55774221fc36c7126f16bfcd76ad12260c7614d06d34bc1a591ba2554d27e7a0" -> "sha256:94de44616c8c6bbec05477b5ba6ab995cf07f4fb1b7417902b3c8efbb2a1e0da" [label=""];
  "sha256:94de44616c8c6bbec05477b5ba6ab995cf07f4fb1b7417902b3c8efbb2a1e0da" -> "sha256:3dcf46f7942742f62fb9a0c5650effd67f495aa37de64261725e957da4b30703" [label=""];
  "sha256:3dcf46f7942742f62fb9a0c5650effd67f495aa37de64261725e957da4b30703" -> "sha256:8a72c6ff05e3d2f5d07b4f4c19883104144956af958336e02a9ecfa7a8ab9419" [label=""];
}

