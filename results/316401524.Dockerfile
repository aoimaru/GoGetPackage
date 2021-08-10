[app/sources/316401524.Dockerfile]
digraph {
  "sha256:abd1403ec9fdbd3622ee21f913bf65e1fa5ec0736325f56fde2d931f232de7ba" [label="docker-image://docker.io/library/ml-pipeline-dataproc-base:latest" shape="ellipse"];
  "sha256:489c810cfc460e9e212b78a563616d0f9348729f6e6214779a60897cf18f2c57" [label="/bin/sh -c mkdir /usr/licenses &&     /ml/license.sh /ml/third_party_licenses.csv /usr/licenses" shape="box"];
  "sha256:f2fae189f397d2d629297a65404e252c30402f78e381cd51b252d34daaa410fd" [label="sha256:f2fae189f397d2d629297a65404e252c30402f78e381cd51b252d34daaa410fd" shape="plaintext"];
  "sha256:abd1403ec9fdbd3622ee21f913bf65e1fa5ec0736325f56fde2d931f232de7ba" -> "sha256:489c810cfc460e9e212b78a563616d0f9348729f6e6214779a60897cf18f2c57" [label=""];
  "sha256:489c810cfc460e9e212b78a563616d0f9348729f6e6214779a60897cf18f2c57" -> "sha256:f2fae189f397d2d629297a65404e252c30402f78e381cd51b252d34daaa410fd" [label=""];
}

