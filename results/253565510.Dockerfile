[app/sources/253565510.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:05f9bc04e8a8446a31a409066f24baf8177f460a6898e4951807bc4962a70231" [label="/bin/sh -c apk update && apk upgrade && apk add netcat-openbsd" shape="box"];
  "sha256:08fd321c59f738609a6930db1842d878039147bff84377e286e4f74535968720" [label="/bin/sh -c mkdir -p /usr/local/organizationservice" shape="box"];
  "sha256:a76cb338ca42353a2a6eddcbeda9338559edffe5cb36df682669ccecc8140e2f" [label="local://context" shape="ellipse"];
  "sha256:6bc7ffea344952f2b72caa0d22ee5bb6ecd860bd5c83cd56eebb72cc82f3256b" [label="copy{src=/@project.build.finalName@.jar, dest=/usr/local/organizationservice/}" shape="note"];
  "sha256:0a7260a993b15f2521f40fd1efb224c36bab9b1899b194ed18b7964f2f1d1846" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:3225dc6bb0aaa70d98d07fd192b47538941dc22a0a01526dee5a22ebf98a75f3" [label="/bin/sh -c chmod +x run.sh" shape="box"];
  "sha256:8d0f629f4e9d9250edbd91066475d62fa1cce47e4eb129d6bb59871f928664e8" [label="sha256:8d0f629f4e9d9250edbd91066475d62fa1cce47e4eb129d6bb59871f928664e8" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:05f9bc04e8a8446a31a409066f24baf8177f460a6898e4951807bc4962a70231" [label=""];
  "sha256:05f9bc04e8a8446a31a409066f24baf8177f460a6898e4951807bc4962a70231" -> "sha256:08fd321c59f738609a6930db1842d878039147bff84377e286e4f74535968720" [label=""];
  "sha256:08fd321c59f738609a6930db1842d878039147bff84377e286e4f74535968720" -> "sha256:6bc7ffea344952f2b72caa0d22ee5bb6ecd860bd5c83cd56eebb72cc82f3256b" [label=""];
  "sha256:a76cb338ca42353a2a6eddcbeda9338559edffe5cb36df682669ccecc8140e2f" -> "sha256:6bc7ffea344952f2b72caa0d22ee5bb6ecd860bd5c83cd56eebb72cc82f3256b" [label=""];
  "sha256:6bc7ffea344952f2b72caa0d22ee5bb6ecd860bd5c83cd56eebb72cc82f3256b" -> "sha256:0a7260a993b15f2521f40fd1efb224c36bab9b1899b194ed18b7964f2f1d1846" [label=""];
  "sha256:a76cb338ca42353a2a6eddcbeda9338559edffe5cb36df682669ccecc8140e2f" -> "sha256:0a7260a993b15f2521f40fd1efb224c36bab9b1899b194ed18b7964f2f1d1846" [label=""];
  "sha256:0a7260a993b15f2521f40fd1efb224c36bab9b1899b194ed18b7964f2f1d1846" -> "sha256:3225dc6bb0aaa70d98d07fd192b47538941dc22a0a01526dee5a22ebf98a75f3" [label=""];
  "sha256:3225dc6bb0aaa70d98d07fd192b47538941dc22a0a01526dee5a22ebf98a75f3" -> "sha256:8d0f629f4e9d9250edbd91066475d62fa1cce47e4eb129d6bb59871f928664e8" [label=""];
}

