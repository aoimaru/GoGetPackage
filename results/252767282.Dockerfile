[app/sources/252767282.Dockerfile]
digraph {
  "sha256:f65ae8276b53137907193cf09600425560bd19df6f700e1041deaa30bfba9588" [label="docker-image://docker.io/library/node:5-onbuild" shape="ellipse"];
  "sha256:f0cdc0a064a82e2555395233874d5bd589a788d07a08d3bc86a7a683be6cd8ab" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:e2f68cf93fdfab30f7a3daa6c4a340383165ac52e9ee84890a10fa82d5843ab3" [label="/bin/sh -c chmod +x ./docker-entrypoint.sh" shape="box"];
  "sha256:a24cf41da937fd1f03a78176750026fb538e6d593b5ce92928a3c353e96d21bb" [label="sha256:a24cf41da937fd1f03a78176750026fb538e6d593b5ce92928a3c353e96d21bb" shape="plaintext"];
  "sha256:f65ae8276b53137907193cf09600425560bd19df6f700e1041deaa30bfba9588" -> "sha256:f0cdc0a064a82e2555395233874d5bd589a788d07a08d3bc86a7a683be6cd8ab" [label=""];
  "sha256:f0cdc0a064a82e2555395233874d5bd589a788d07a08d3bc86a7a683be6cd8ab" -> "sha256:e2f68cf93fdfab30f7a3daa6c4a340383165ac52e9ee84890a10fa82d5843ab3" [label=""];
  "sha256:e2f68cf93fdfab30f7a3daa6c4a340383165ac52e9ee84890a10fa82d5843ab3" -> "sha256:a24cf41da937fd1f03a78176750026fb538e6d593b5ce92928a3c353e96d21bb" [label=""];
}

