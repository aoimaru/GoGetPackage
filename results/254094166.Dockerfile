[app/sources/254094166.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:05f9bc04e8a8446a31a409066f24baf8177f460a6898e4951807bc4962a70231" [label="/bin/sh -c apk update && apk upgrade && apk add netcat-openbsd" shape="box"];
  "sha256:04a61b34312ee642fb61766420a2e7bc32498a5112782550d15721c65984c768" [label="/bin/sh -c mkdir -p /usr/local/licensingservice" shape="box"];
  "sha256:c2e7c480b07184bc0f884e0823333cb91d55beb5a914d5f3248103843f38594c" [label="local://context" shape="ellipse"];
  "sha256:afa04352dffcd4f68f79ca6d86c717e58c22a87c17c9eaa4e3a4ae8f28df5fc9" [label="copy{src=/@project.build.finalName@.jar, dest=/usr/local/licensingservice/}" shape="note"];
  "sha256:d443f43becf1923bcbad0c416d9b864bdb28bce9f14af7162acad9b87fb6ee03" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:1f2a9aa131f78d1050406da2c33c665a1dfd4bc089eb2660ab9c1cb7397e12f9" [label="/bin/sh -c chmod +x run.sh" shape="box"];
  "sha256:a470b75222e6bcbb374e81080b4810dba386c091da6af7ecbafcfe820826ebe0" [label="sha256:a470b75222e6bcbb374e81080b4810dba386c091da6af7ecbafcfe820826ebe0" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:05f9bc04e8a8446a31a409066f24baf8177f460a6898e4951807bc4962a70231" [label=""];
  "sha256:05f9bc04e8a8446a31a409066f24baf8177f460a6898e4951807bc4962a70231" -> "sha256:04a61b34312ee642fb61766420a2e7bc32498a5112782550d15721c65984c768" [label=""];
  "sha256:04a61b34312ee642fb61766420a2e7bc32498a5112782550d15721c65984c768" -> "sha256:afa04352dffcd4f68f79ca6d86c717e58c22a87c17c9eaa4e3a4ae8f28df5fc9" [label=""];
  "sha256:c2e7c480b07184bc0f884e0823333cb91d55beb5a914d5f3248103843f38594c" -> "sha256:afa04352dffcd4f68f79ca6d86c717e58c22a87c17c9eaa4e3a4ae8f28df5fc9" [label=""];
  "sha256:afa04352dffcd4f68f79ca6d86c717e58c22a87c17c9eaa4e3a4ae8f28df5fc9" -> "sha256:d443f43becf1923bcbad0c416d9b864bdb28bce9f14af7162acad9b87fb6ee03" [label=""];
  "sha256:c2e7c480b07184bc0f884e0823333cb91d55beb5a914d5f3248103843f38594c" -> "sha256:d443f43becf1923bcbad0c416d9b864bdb28bce9f14af7162acad9b87fb6ee03" [label=""];
  "sha256:d443f43becf1923bcbad0c416d9b864bdb28bce9f14af7162acad9b87fb6ee03" -> "sha256:1f2a9aa131f78d1050406da2c33c665a1dfd4bc089eb2660ab9c1cb7397e12f9" [label=""];
  "sha256:1f2a9aa131f78d1050406da2c33c665a1dfd4bc089eb2660ab9c1cb7397e12f9" -> "sha256:a470b75222e6bcbb374e81080b4810dba386c091da6af7ecbafcfe820826ebe0" [label=""];
}

