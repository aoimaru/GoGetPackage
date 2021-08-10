[app/sources/238555638.Dockerfile]
digraph {
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" [label="docker-image://docker.io/library/openjdk:8-alpine" shape="ellipse"];
  "sha256:4cab308c767d42ec9fbff7f9aa442941a2395e53aa3c3c7ca22445344b7cdb23" [label="local://context" shape="ellipse"];
  "sha256:d4fddceed33eaffde505604ee18b9681eda0488aad771e690fd9903d98d5925f" [label="copy{src=/target/quizgame-exec.jar, dest=/}" shape="note"];
  "sha256:c02f97c6d669e89e7e1fbb31c2cf881fc72ba2d7b68c6b8e4d4a9435b9bdb305" [label="sha256:c02f97c6d669e89e7e1fbb31c2cf881fc72ba2d7b68c6b8e4d4a9435b9bdb305" shape="plaintext"];
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" -> "sha256:d4fddceed33eaffde505604ee18b9681eda0488aad771e690fd9903d98d5925f" [label=""];
  "sha256:4cab308c767d42ec9fbff7f9aa442941a2395e53aa3c3c7ca22445344b7cdb23" -> "sha256:d4fddceed33eaffde505604ee18b9681eda0488aad771e690fd9903d98d5925f" [label=""];
  "sha256:d4fddceed33eaffde505604ee18b9681eda0488aad771e690fd9903d98d5925f" -> "sha256:c02f97c6d669e89e7e1fbb31c2cf881fc72ba2d7b68c6b8e4d4a9435b9bdb305" [label=""];
}

