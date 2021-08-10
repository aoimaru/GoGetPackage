[app/sources/365222575.Dockerfile]
digraph {
  "sha256:9d8f5ee1bbb9ee6d8672a05729181097d8eecac4c08aa68e001d34be0df8f39f" [label="docker-image://docker.io/mhart/alpine-node:4.2.1" shape="ellipse"];
  "sha256:a251c9cf9335e389932be976f3f30a2f1da4a4711f1b1bbd6aeffd9e44e3d328" [label="local://context" shape="ellipse"];
  "sha256:fb6375042b05fccd1bae18bd207d53ffd57c038812d3ff61ca2b87a2bca170e6" [label="copy{src=/start_daemon.sh, dest=/usr/local/bin/start_daemon}" shape="note"];
  "sha256:975fc6a8a06677e20fadb59f0eb8fa4daa6c9b95e87a01701d7ca3f6cfbf1c8b" [label="/bin/sh -c apk add --update bash curl wget ca-certificates zip  && wget https://gobuilder.me/get/github.com/ipfs/go-ipfs/cmd/ipfs/ipfs_${VERSION}_linux-386.zip  && unzip ipfs_${VERSION}_linux-386.zip  && rm ipfs_${VERSION}_linux-386.zip  && mv ipfs/ipfs /usr/local/bin/ipfs  && chmod 755 /usr/local/bin/start_daemon  && apk del wget zip curl" shape="box"];
  "sha256:178e071a3f48f64d93d301d327a66d28b0a3fd4191b89377e43308198213c296" [label="sha256:178e071a3f48f64d93d301d327a66d28b0a3fd4191b89377e43308198213c296" shape="plaintext"];
  "sha256:9d8f5ee1bbb9ee6d8672a05729181097d8eecac4c08aa68e001d34be0df8f39f" -> "sha256:fb6375042b05fccd1bae18bd207d53ffd57c038812d3ff61ca2b87a2bca170e6" [label=""];
  "sha256:a251c9cf9335e389932be976f3f30a2f1da4a4711f1b1bbd6aeffd9e44e3d328" -> "sha256:fb6375042b05fccd1bae18bd207d53ffd57c038812d3ff61ca2b87a2bca170e6" [label=""];
  "sha256:fb6375042b05fccd1bae18bd207d53ffd57c038812d3ff61ca2b87a2bca170e6" -> "sha256:975fc6a8a06677e20fadb59f0eb8fa4daa6c9b95e87a01701d7ca3f6cfbf1c8b" [label=""];
  "sha256:975fc6a8a06677e20fadb59f0eb8fa4daa6c9b95e87a01701d7ca3f6cfbf1c8b" -> "sha256:178e071a3f48f64d93d301d327a66d28b0a3fd4191b89377e43308198213c296" [label=""];
}

