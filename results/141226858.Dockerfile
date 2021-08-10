[app/sources/141226858.Dockerfile]
digraph {
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" [label="docker-image://docker.io/library/openjdk:8-alpine" shape="ellipse"];
  "sha256:189a2664dee9eecea949f843519d2f1562599be4b0fba4351f3efded3e566f75" [label="local://context" shape="ellipse"];
  "sha256:547918bc95f3f06c5f5daf9b216eb7a8dd27b869bcd31296ce8515665fca9b5f" [label="copy{src=/target/files/io.cellery.security.cell.sts.server-*.jar, dest=/}" shape="note"];
  "sha256:0be4b086694c506825fb6767cf63092e5ffa281d6ce3c37c8fc0db333e8ae897" [label="sha256:0be4b086694c506825fb6767cf63092e5ffa281d6ce3c37c8fc0db333e8ae897" shape="plaintext"];
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" -> "sha256:547918bc95f3f06c5f5daf9b216eb7a8dd27b869bcd31296ce8515665fca9b5f" [label=""];
  "sha256:189a2664dee9eecea949f843519d2f1562599be4b0fba4351f3efded3e566f75" -> "sha256:547918bc95f3f06c5f5daf9b216eb7a8dd27b869bcd31296ce8515665fca9b5f" [label=""];
  "sha256:547918bc95f3f06c5f5daf9b216eb7a8dd27b869bcd31296ce8515665fca9b5f" -> "sha256:0be4b086694c506825fb6767cf63092e5ffa281d6ce3c37c8fc0db333e8ae897" [label=""];
}

