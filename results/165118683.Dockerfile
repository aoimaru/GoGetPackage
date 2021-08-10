[app/sources/165118683.Dockerfile]
digraph {
  "sha256:982a80383bdf7bf7d0075d73de888a08458162d4d65bbb321c4ceb9de9957cf9" [label="docker-image://docker.io/partlab/ubuntu@sha256:11559143edc60745c4bdb75bea819fec91b7f9df0799b8967965bb26b15d4ae4" shape="ellipse"];
  "sha256:6476163bafef47d6e37275c8fc83bbb2d2bb1a032c32acde99ef350ce2608226" [label="/bin/sh -c wget https://github.com/joewalnes/websocketd/releases/download/v$WEBSKD_VERSION/websocketd-$WEBSKD_VERSION\\_amd64.deb &&     dpkg -i websocketd-$WEBSKD_VERSION\\_amd64.deb &&     rm websocketd-$WEBSKD_VERSION\\_amd64.deb &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:eaef8ebef3f6af8c637f1160d6a2d9c4e9e5b8641636e83fa09fa968e3c0244f" [label="sha256:eaef8ebef3f6af8c637f1160d6a2d9c4e9e5b8641636e83fa09fa968e3c0244f" shape="plaintext"];
  "sha256:982a80383bdf7bf7d0075d73de888a08458162d4d65bbb321c4ceb9de9957cf9" -> "sha256:6476163bafef47d6e37275c8fc83bbb2d2bb1a032c32acde99ef350ce2608226" [label=""];
  "sha256:6476163bafef47d6e37275c8fc83bbb2d2bb1a032c32acde99ef350ce2608226" -> "sha256:eaef8ebef3f6af8c637f1160d6a2d9c4e9e5b8641636e83fa09fa968e3c0244f" [label=""];
}

