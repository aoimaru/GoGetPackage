[app/sources/284738718.Dockerfile]
digraph {
  "sha256:846720efb2b93c151077ba23a10d12b63b5723b91cfc99d77037bf3a95535dd4" [label="docker-image://docker.io/library/java:8-jre-alpine" shape="ellipse"];
  "sha256:ffde55bdc1bce9a5930149580860878f2086d44caab60f53967a8d1a0e6d479b" [label="local://context" shape="ellipse"];
  "sha256:d1781b7a5ff8628a80d8ac942a4e6029614f2c6960dafbbfcaa294605d6621c4" [label="copy{src=/target/*.jar, dest=/app.jar}" shape="note"];
  "sha256:a713f962af71d590ab07c01a56f22a99662f2767d70bdfc033c9158192a6b213" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:17e2bd2b7019d09bd792c5a3233a6326b14a9e08c5dd2a1875637a3f067cc015" [label="/bin/sh -c echo $(date) > /image_built_at" shape="box"];
  "sha256:d6ac69189ffbc92c74edb0542eeb6b6a2e2b57af8dc2b10cbb2b2293a5bbc022" [label="sha256:d6ac69189ffbc92c74edb0542eeb6b6a2e2b57af8dc2b10cbb2b2293a5bbc022" shape="plaintext"];
  "sha256:846720efb2b93c151077ba23a10d12b63b5723b91cfc99d77037bf3a95535dd4" -> "sha256:d1781b7a5ff8628a80d8ac942a4e6029614f2c6960dafbbfcaa294605d6621c4" [label=""];
  "sha256:ffde55bdc1bce9a5930149580860878f2086d44caab60f53967a8d1a0e6d479b" -> "sha256:d1781b7a5ff8628a80d8ac942a4e6029614f2c6960dafbbfcaa294605d6621c4" [label=""];
  "sha256:d1781b7a5ff8628a80d8ac942a4e6029614f2c6960dafbbfcaa294605d6621c4" -> "sha256:a713f962af71d590ab07c01a56f22a99662f2767d70bdfc033c9158192a6b213" [label=""];
  "sha256:a713f962af71d590ab07c01a56f22a99662f2767d70bdfc033c9158192a6b213" -> "sha256:17e2bd2b7019d09bd792c5a3233a6326b14a9e08c5dd2a1875637a3f067cc015" [label=""];
  "sha256:17e2bd2b7019d09bd792c5a3233a6326b14a9e08c5dd2a1875637a3f067cc015" -> "sha256:d6ac69189ffbc92c74edb0542eeb6b6a2e2b57af8dc2b10cbb2b2293a5bbc022" [label=""];
}

