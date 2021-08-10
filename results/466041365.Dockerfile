[app/sources/466041365.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:e8a3a99aa5f48d0f7e5f0bedc04adb8b622978d45363c45cc31192ccdd499728" [label="mkdir{path=/usr/app}" shape="note"];
  "sha256:6b5bf6a35a6e4023ebc5e6ea6da1352d99faf90e16219229c4d328029befc8ee" [label="local://context" shape="ellipse"];
  "sha256:54ab5ac0ead859fb38874f37c82a94da4e87b40b43ce14d58ef1510b2a7ebe3d" [label="copy{src=/package.json, dest=/usr/app/}" shape="note"];
  "sha256:ae55c531da6a11d30aabee72fc23745d81eac3568090740050576d6df12f5a96" [label="/bin/sh -c npm i" shape="box"];
  "sha256:01725c76e808c4fc0087f241368d477ee24b5c9559ba3ad6b4e13133a2187174" [label="copy{src=/, dest=/usr/app/}" shape="note"];
  "sha256:e2107e8012fe5b5ae6456a5eef8cc9ca0eb6836f8167335a72e9e185eef1c0cd" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:042917524fd98d45c9d040ea24930110c973b0c0c15518b60d734fff8e4d455e" [label="sha256:042917524fd98d45c9d040ea24930110c973b0c0c15518b60d734fff8e4d455e" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:e8a3a99aa5f48d0f7e5f0bedc04adb8b622978d45363c45cc31192ccdd499728" [label=""];
  "sha256:e8a3a99aa5f48d0f7e5f0bedc04adb8b622978d45363c45cc31192ccdd499728" -> "sha256:54ab5ac0ead859fb38874f37c82a94da4e87b40b43ce14d58ef1510b2a7ebe3d" [label=""];
  "sha256:6b5bf6a35a6e4023ebc5e6ea6da1352d99faf90e16219229c4d328029befc8ee" -> "sha256:54ab5ac0ead859fb38874f37c82a94da4e87b40b43ce14d58ef1510b2a7ebe3d" [label=""];
  "sha256:54ab5ac0ead859fb38874f37c82a94da4e87b40b43ce14d58ef1510b2a7ebe3d" -> "sha256:ae55c531da6a11d30aabee72fc23745d81eac3568090740050576d6df12f5a96" [label=""];
  "sha256:ae55c531da6a11d30aabee72fc23745d81eac3568090740050576d6df12f5a96" -> "sha256:01725c76e808c4fc0087f241368d477ee24b5c9559ba3ad6b4e13133a2187174" [label=""];
  "sha256:6b5bf6a35a6e4023ebc5e6ea6da1352d99faf90e16219229c4d328029befc8ee" -> "sha256:01725c76e808c4fc0087f241368d477ee24b5c9559ba3ad6b4e13133a2187174" [label=""];
  "sha256:01725c76e808c4fc0087f241368d477ee24b5c9559ba3ad6b4e13133a2187174" -> "sha256:e2107e8012fe5b5ae6456a5eef8cc9ca0eb6836f8167335a72e9e185eef1c0cd" [label=""];
  "sha256:e2107e8012fe5b5ae6456a5eef8cc9ca0eb6836f8167335a72e9e185eef1c0cd" -> "sha256:042917524fd98d45c9d040ea24930110c973b0c0c15518b60d734fff8e4d455e" [label=""];
}

