[app/sources/278713851.Dockerfile]
digraph {
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" [label="docker-image://docker.io/library/openjdk:8-alpine" shape="ellipse"];
  "sha256:b6b13b89e9ed599e078f3beb058614689106b2d195e2caf43c653b5434df5156" [label="local://context" shape="ellipse"];
  "sha256:470f1694a292ea61fe4bc7ed132aa9436a06facfb479f7c0984e6fb3b260d586" [label="copy{src=/dockerfile-image-update/target/dockerfile-image-update-1.0-SNAPSHOT.jar, dest=/dockerfile-image-update.jar}" shape="note"];
  "sha256:56f4def1e1234cb0d15dc973c7fcefda7dd40a7b34ec10a95cecf1143a1ed57c" [label="sha256:56f4def1e1234cb0d15dc973c7fcefda7dd40a7b34ec10a95cecf1143a1ed57c" shape="plaintext"];
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" -> "sha256:470f1694a292ea61fe4bc7ed132aa9436a06facfb479f7c0984e6fb3b260d586" [label=""];
  "sha256:b6b13b89e9ed599e078f3beb058614689106b2d195e2caf43c653b5434df5156" -> "sha256:470f1694a292ea61fe4bc7ed132aa9436a06facfb479f7c0984e6fb3b260d586" [label=""];
  "sha256:470f1694a292ea61fe4bc7ed132aa9436a06facfb479f7c0984e6fb3b260d586" -> "sha256:56f4def1e1234cb0d15dc973c7fcefda7dd40a7b34ec10a95cecf1143a1ed57c" [label=""];
}

