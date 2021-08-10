[app/sources/238555233.Dockerfile]
digraph {
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" [label="docker-image://docker.io/library/openjdk:8-alpine" shape="ellipse"];
  "sha256:a9ec085967585092e5b01c18e916400120343c5b52b8d25801c9adce6f7affbb" [label="local://context" shape="ellipse"];
  "sha256:a9e8e66e59403ab4a56b776939837d763b5252c94a498015c9fba609b1e4b788" [label="copy{src=/target/scg.jar, dest=/}" shape="note"];
  "sha256:4240263563ea06915adfb5abc0372e5d8a6915a4f27bd99f632bf26a81ce4fb6" [label="sha256:4240263563ea06915adfb5abc0372e5d8a6915a4f27bd99f632bf26a81ce4fb6" shape="plaintext"];
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" -> "sha256:a9e8e66e59403ab4a56b776939837d763b5252c94a498015c9fba609b1e4b788" [label=""];
  "sha256:a9ec085967585092e5b01c18e916400120343c5b52b8d25801c9adce6f7affbb" -> "sha256:a9e8e66e59403ab4a56b776939837d763b5252c94a498015c9fba609b1e4b788" [label=""];
  "sha256:a9e8e66e59403ab4a56b776939837d763b5252c94a498015c9fba609b1e4b788" -> "sha256:4240263563ea06915adfb5abc0372e5d8a6915a4f27bd99f632bf26a81ce4fb6" [label=""];
}

