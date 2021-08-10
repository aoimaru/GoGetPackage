[app/sources/467257170.Dockerfile]
digraph {
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" [label="docker-image://docker.io/library/golang:1.11" shape="ellipse"];
  "sha256:a06feff3833789c6cacb6946b7f60e3263ca27e1c9d2546840bf5d8dc154e707" [label="/bin/sh -c go get github.com/aktau/github-release" shape="box"];
  "sha256:6539c9c8f2ed01889dbb842f876dbc170acc0946e47d733dcf826a9134412ea8" [label="local://context" shape="ellipse"];
  "sha256:8f9d7746ee31600d2757772dcd9533943ce958598b237913a116b168e228bda5" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:ef877189d564f988479ff8c48e62513179b4a4e237f1d09c20554467be60716a" [label="mkdir{path=/github/workspace}" shape="note"];
  "sha256:f4452f9cb185f5bb84511d552f3e8a513e38fc62bf7a3bf750c2a9ecc3afa321" [label="/bin/sh -c mkdir -p /github/workspace" shape="box"];
  "sha256:01f29fc06628246c64c31e57ed87920e951a2b291472bab7da5f3c451a64aea7" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:7789b89ea85d2ff4df6bf54705a29bd62d005751ef4e2dc6ac98bf6c7bd1ee93" [label="sha256:7789b89ea85d2ff4df6bf54705a29bd62d005751ef4e2dc6ac98bf6c7bd1ee93" shape="plaintext"];
  "sha256:70458f1ba33251020a20232472588685ceff7a78e8ba6f0f755bc53a822ba531" -> "sha256:a06feff3833789c6cacb6946b7f60e3263ca27e1c9d2546840bf5d8dc154e707" [label=""];
  "sha256:a06feff3833789c6cacb6946b7f60e3263ca27e1c9d2546840bf5d8dc154e707" -> "sha256:8f9d7746ee31600d2757772dcd9533943ce958598b237913a116b168e228bda5" [label=""];
  "sha256:6539c9c8f2ed01889dbb842f876dbc170acc0946e47d733dcf826a9134412ea8" -> "sha256:8f9d7746ee31600d2757772dcd9533943ce958598b237913a116b168e228bda5" [label=""];
  "sha256:8f9d7746ee31600d2757772dcd9533943ce958598b237913a116b168e228bda5" -> "sha256:ef877189d564f988479ff8c48e62513179b4a4e237f1d09c20554467be60716a" [label=""];
  "sha256:ef877189d564f988479ff8c48e62513179b4a4e237f1d09c20554467be60716a" -> "sha256:f4452f9cb185f5bb84511d552f3e8a513e38fc62bf7a3bf750c2a9ecc3afa321" [label=""];
  "sha256:f4452f9cb185f5bb84511d552f3e8a513e38fc62bf7a3bf750c2a9ecc3afa321" -> "sha256:01f29fc06628246c64c31e57ed87920e951a2b291472bab7da5f3c451a64aea7" [label=""];
  "sha256:01f29fc06628246c64c31e57ed87920e951a2b291472bab7da5f3c451a64aea7" -> "sha256:7789b89ea85d2ff4df6bf54705a29bd62d005751ef4e2dc6ac98bf6c7bd1ee93" [label=""];
}

