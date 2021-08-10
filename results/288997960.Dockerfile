[app/sources/288997960.Dockerfile]
digraph {
  "sha256:bb707c81db94b1edb2fe163ce3145fff08804c77c425abb8d5edad571c618c78" [label="docker-image://docker.io/wch1/r-debug-2:latest" shape="ellipse"];
  "sha256:29f546b8a352b418384d635423fa61a7cce5b831a9ae709a789a5c975edeb0c1" [label="/bin/sh -c /tmp/buildR.sh csan" shape="box"];
  "sha256:370d198a9a809b307de1e97636d8c2abe56c406ec9d2ca4b1cb8122ea043b6f4" [label="/bin/sh -c sed -i 's/^#!\\/bin\\/bash/#!\\/bin\\/bash\\nulimit -Ss 32768/' /usr/local/bin/RDcsan" shape="box"];
  "sha256:7f61ac70dcaee3b88857cfcc1f8adb0ca6099e3935075ef4aed3d39dbc5f9d62" [label="sha256:7f61ac70dcaee3b88857cfcc1f8adb0ca6099e3935075ef4aed3d39dbc5f9d62" shape="plaintext"];
  "sha256:bb707c81db94b1edb2fe163ce3145fff08804c77c425abb8d5edad571c618c78" -> "sha256:29f546b8a352b418384d635423fa61a7cce5b831a9ae709a789a5c975edeb0c1" [label=""];
  "sha256:29f546b8a352b418384d635423fa61a7cce5b831a9ae709a789a5c975edeb0c1" -> "sha256:370d198a9a809b307de1e97636d8c2abe56c406ec9d2ca4b1cb8122ea043b6f4" [label=""];
  "sha256:370d198a9a809b307de1e97636d8c2abe56c406ec9d2ca4b1cb8122ea043b6f4" -> "sha256:7f61ac70dcaee3b88857cfcc1f8adb0ca6099e3935075ef4aed3d39dbc5f9d62" [label=""];
}

