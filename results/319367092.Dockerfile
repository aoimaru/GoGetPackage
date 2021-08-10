[app/sources/319367092.Dockerfile]
digraph {
  "sha256:3e01d388a8cf1a8e3f48f9636fc7f0e8a8ad2bf9216eeda56df1cbe1df95515e" [label="docker-image://k8s.gcr.io/debian-base:v1.0.0@sha256:3801f944c765dc1b54900826ca67b1380bb8c73b9caf4a2a27ce613b3ba3e742" shape="ellipse"];
  "sha256:5a2f45bf65d040b0540434f720164e0189e8df886bb024ff29401ab526bdbe2a" [label="/bin/sh -c apt-get update -y && apt-get install -y bash jq curl" shape="box"];
  "sha256:073f379d8a677414b7acf164db9fae1ac2a5f898b54024a6ed7a159062c78f24" [label="local://context" shape="ellipse"];
  "sha256:ec3c1f573c05c63de22568ba013e120acb2d1443a29874e8cb64f0dab316931a" [label="copy{src=/common.sh, dest=/common.sh}" shape="note"];
  "sha256:7bd3bbba91c5e13a103f539ced51175bebbbb10b8cc854b72ac04741d29d5ee8" [label="copy{src=/verify-emoji.sh, dest=/verify-emoji.sh}" shape="note"];
  "sha256:dd7ecf05c440133a390b17a7941611125a9970ad2089ff2c38309fa44eba30f8" [label="sha256:dd7ecf05c440133a390b17a7941611125a9970ad2089ff2c38309fa44eba30f8" shape="plaintext"];
  "sha256:3e01d388a8cf1a8e3f48f9636fc7f0e8a8ad2bf9216eeda56df1cbe1df95515e" -> "sha256:5a2f45bf65d040b0540434f720164e0189e8df886bb024ff29401ab526bdbe2a" [label=""];
  "sha256:5a2f45bf65d040b0540434f720164e0189e8df886bb024ff29401ab526bdbe2a" -> "sha256:ec3c1f573c05c63de22568ba013e120acb2d1443a29874e8cb64f0dab316931a" [label=""];
  "sha256:073f379d8a677414b7acf164db9fae1ac2a5f898b54024a6ed7a159062c78f24" -> "sha256:ec3c1f573c05c63de22568ba013e120acb2d1443a29874e8cb64f0dab316931a" [label=""];
  "sha256:ec3c1f573c05c63de22568ba013e120acb2d1443a29874e8cb64f0dab316931a" -> "sha256:7bd3bbba91c5e13a103f539ced51175bebbbb10b8cc854b72ac04741d29d5ee8" [label=""];
  "sha256:073f379d8a677414b7acf164db9fae1ac2a5f898b54024a6ed7a159062c78f24" -> "sha256:7bd3bbba91c5e13a103f539ced51175bebbbb10b8cc854b72ac04741d29d5ee8" [label=""];
  "sha256:7bd3bbba91c5e13a103f539ced51175bebbbb10b8cc854b72ac04741d29d5ee8" -> "sha256:dd7ecf05c440133a390b17a7941611125a9970ad2089ff2c38309fa44eba30f8" [label=""];
}

