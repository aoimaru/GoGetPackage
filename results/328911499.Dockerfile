[app/sources/328911499.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:6ae7f7370fa14aa74b329b1e64977361f25b6743088e50c17b6a8edd9c6c9feb" [label="/bin/sh -c apt-get update -q" shape="box"];
  "sha256:49133c55560b91e6373a8fe227211ae67feb6f1f36c58f451de4b5430f345eda" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -qy build-essential curl git" shape="box"];
  "sha256:5053ccd687e51eb38577bf9241c44824e1e789fec5148eb2a1beae55edc23ce0" [label="/bin/sh -c curl -s https://storage.googleapis.com/golang/go1.3.src.tar.gz | tar -v -C /usr/local -xz" shape="box"];
  "sha256:9d315428e97c043fd50805ee29c1cdd88e24d17e733b6ea8679dbaa045b89bac" [label="/bin/sh -c cd /usr/local/go/src && ./make.bash --no-clean 2>&1" shape="box"];
  "sha256:00bae85e753b604fbc93f7541f56bda4aee2d174b40b2d835111bb5eb11cadc8" [label="local://context" shape="ellipse"];
  "sha256:e1b43f0c90c6fa85044f8eed2fed892f51c286bba96b98386aad48829cf88914" [label="copy{src=/, dest=/opt/etcd}" shape="note"];
  "sha256:35b17ae6502120fc8e6a6fd7e5d5a91f83dc5dce7b480cdab4c5e09f5102bcaf" [label="/bin/sh -c cd /opt/etcd && ./build" shape="box"];
  "sha256:fd87da2962d510e702c91e878667444eb297e99cde2359d42d573f0607dd6f1a" [label="sha256:fd87da2962d510e702c91e878667444eb297e99cde2359d42d573f0607dd6f1a" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:6ae7f7370fa14aa74b329b1e64977361f25b6743088e50c17b6a8edd9c6c9feb" [label=""];
  "sha256:6ae7f7370fa14aa74b329b1e64977361f25b6743088e50c17b6a8edd9c6c9feb" -> "sha256:49133c55560b91e6373a8fe227211ae67feb6f1f36c58f451de4b5430f345eda" [label=""];
  "sha256:49133c55560b91e6373a8fe227211ae67feb6f1f36c58f451de4b5430f345eda" -> "sha256:5053ccd687e51eb38577bf9241c44824e1e789fec5148eb2a1beae55edc23ce0" [label=""];
  "sha256:5053ccd687e51eb38577bf9241c44824e1e789fec5148eb2a1beae55edc23ce0" -> "sha256:9d315428e97c043fd50805ee29c1cdd88e24d17e733b6ea8679dbaa045b89bac" [label=""];
  "sha256:9d315428e97c043fd50805ee29c1cdd88e24d17e733b6ea8679dbaa045b89bac" -> "sha256:e1b43f0c90c6fa85044f8eed2fed892f51c286bba96b98386aad48829cf88914" [label=""];
  "sha256:00bae85e753b604fbc93f7541f56bda4aee2d174b40b2d835111bb5eb11cadc8" -> "sha256:e1b43f0c90c6fa85044f8eed2fed892f51c286bba96b98386aad48829cf88914" [label=""];
  "sha256:e1b43f0c90c6fa85044f8eed2fed892f51c286bba96b98386aad48829cf88914" -> "sha256:35b17ae6502120fc8e6a6fd7e5d5a91f83dc5dce7b480cdab4c5e09f5102bcaf" [label=""];
  "sha256:35b17ae6502120fc8e6a6fd7e5d5a91f83dc5dce7b480cdab4c5e09f5102bcaf" -> "sha256:fd87da2962d510e702c91e878667444eb297e99cde2359d42d573f0607dd6f1a" [label=""];
}

