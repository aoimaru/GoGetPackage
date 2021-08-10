[app/sources/240469288.Dockerfile]
digraph {
  "sha256:6035c4abc77cbf99bdba5479fcf46b3dabfcd962d00829fefcb891010f6c4c21" [label="docker-image://docker.io/bigtruedata/scala:2.10.6" shape="ellipse"];
  "sha256:3c395e81dc9b698c958c63f937ace41c93569ad7855f4f3facc0840933338bb5" [label="/bin/sh -c wget -O- \"https://github.com/sbt/sbt/releases/download/v1.0.1/sbt-1.0.1.tgz\"     |  tar xzf - -C /usr/local --strip-components=1     && sbt exit" shape="box"];
  "sha256:5ef3e04b064eb250d0696ed213d59953f0602e7c95114a9694486382fce78a3a" [label="mkdir{path=/app}" shape="note"];
  "sha256:1c8860e1618a815b60afc866c9e40e1c2ca4be83c907404863be8661c2e5d110" [label="sha256:1c8860e1618a815b60afc866c9e40e1c2ca4be83c907404863be8661c2e5d110" shape="plaintext"];
  "sha256:6035c4abc77cbf99bdba5479fcf46b3dabfcd962d00829fefcb891010f6c4c21" -> "sha256:3c395e81dc9b698c958c63f937ace41c93569ad7855f4f3facc0840933338bb5" [label=""];
  "sha256:3c395e81dc9b698c958c63f937ace41c93569ad7855f4f3facc0840933338bb5" -> "sha256:5ef3e04b064eb250d0696ed213d59953f0602e7c95114a9694486382fce78a3a" [label=""];
  "sha256:5ef3e04b064eb250d0696ed213d59953f0602e7c95114a9694486382fce78a3a" -> "sha256:1c8860e1618a815b60afc866c9e40e1c2ca4be83c907404863be8661c2e5d110" [label=""];
}

