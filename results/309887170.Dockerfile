[app/sources/309887170.Dockerfile]
digraph {
  "sha256:a40b8235aa776fdb1d99a42286d6d2a0902809136b680d72986b13bbc7e62859" [label="docker-image://gcr.io/google_containers/kube-cross:KUBE_BUILD_IMAGE_CROSS_TAG" shape="ellipse"];
  "sha256:f4face1eac3bc1fcf94c1c0a601031b47ef37ad627b66be771256c1125ea7352" [label="/bin/sh -c touch /kube-build-image" shape="box"];
  "sha256:f067c667613e7cf3ded69c902bcbe2e3ca819ede9160688ededda0bbaa15f989" [label="mkdir{path=/go/src/k8s.io/kubernetes}" shape="note"];
  "sha256:6468168dfcbf2c68b2b843dda186cb4c3df169a6d3a4c246e272bd8c0025211e" [label="/bin/sh -c go get golang.org/x/tools/cmd/goimports" shape="box"];
  "sha256:c4db60f8dd3c765f0d76a48689ee73a01b2dabc01d28df4997c211217198ad24" [label="sha256:c4db60f8dd3c765f0d76a48689ee73a01b2dabc01d28df4997c211217198ad24" shape="plaintext"];
  "sha256:a40b8235aa776fdb1d99a42286d6d2a0902809136b680d72986b13bbc7e62859" -> "sha256:f4face1eac3bc1fcf94c1c0a601031b47ef37ad627b66be771256c1125ea7352" [label=""];
  "sha256:f4face1eac3bc1fcf94c1c0a601031b47ef37ad627b66be771256c1125ea7352" -> "sha256:f067c667613e7cf3ded69c902bcbe2e3ca819ede9160688ededda0bbaa15f989" [label=""];
  "sha256:f067c667613e7cf3ded69c902bcbe2e3ca819ede9160688ededda0bbaa15f989" -> "sha256:6468168dfcbf2c68b2b843dda186cb4c3df169a6d3a4c246e272bd8c0025211e" [label=""];
  "sha256:6468168dfcbf2c68b2b843dda186cb4c3df169a6d3a4c246e272bd8c0025211e" -> "sha256:c4db60f8dd3c765f0d76a48689ee73a01b2dabc01d28df4997c211217198ad24" [label=""];
}

