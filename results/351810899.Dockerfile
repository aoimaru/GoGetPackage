[app/sources/351810899.Dockerfile]
digraph {
  "sha256:0fb939674cc804a63bc41829a19d22519d6d2f1b7b180ca93915b9da4637d791" [label="docker-image://docker.io/library/java:8-jdk" shape="ellipse"];
  "sha256:9e8c8a1e3bbc6c7d1f43d948fe0aacef5bc3f336c5b02e78de1a268342926da6" [label="/bin/sh -c apt-get -y update && apt-get -y install wget" shape="box"];
  "sha256:805eb684dd85de071e9e7cd84b48007b22b49c9298c6287aab266e55924a3da8" [label="/bin/sh -c mkdir /opt/ubu" shape="box"];
  "sha256:025c1be8dea25d6b702b9391fb833a01852b1ccfa90f6ec4dc998517114c8571" [label="local://context" shape="ellipse"];
  "sha256:c41f8828c3770fe1a9258f63d214f97b2b4fcf1ff29e987c17982470698741b6" [label="copy{src=/wrapper.sh, dest=/opt/ubu/}" shape="note"];
  "sha256:6b16085c00fe8500f9095bc6fcea1d36a28c33962aa7c8f92ecaffd05c103d05" [label="/bin/sh -c wget https://github.com/downloads/mozack/ubu/ubu-1.2-jar-with-dependencies.jar -O ubu.jar" shape="box"];
  "sha256:b5354ebc688aa8a3bf963b79fd59d67d006447ebc9c0bc28aae414a09d01720c" [label="/bin/sh -c mv ubu.jar /opt/ubu/" shape="box"];
  "sha256:1e748df83719e5fda72e5bcd1d653acfd1ac5d0b789718f599213c4d4110ad8d" [label="/bin/sh -c mkdir /data" shape="box"];
  "sha256:cfbd736fee9465b296ef3aecc196017019dc5deaefeb5dc4e58bdff7df8432c1" [label="mkdir{path=/data}" shape="note"];
  "sha256:64e16bb4b2854cc3d344ca261c1b5c7979b6f220a86c8e304c413b953e207476" [label="sha256:64e16bb4b2854cc3d344ca261c1b5c7979b6f220a86c8e304c413b953e207476" shape="plaintext"];
  "sha256:0fb939674cc804a63bc41829a19d22519d6d2f1b7b180ca93915b9da4637d791" -> "sha256:9e8c8a1e3bbc6c7d1f43d948fe0aacef5bc3f336c5b02e78de1a268342926da6" [label=""];
  "sha256:9e8c8a1e3bbc6c7d1f43d948fe0aacef5bc3f336c5b02e78de1a268342926da6" -> "sha256:805eb684dd85de071e9e7cd84b48007b22b49c9298c6287aab266e55924a3da8" [label=""];
  "sha256:805eb684dd85de071e9e7cd84b48007b22b49c9298c6287aab266e55924a3da8" -> "sha256:c41f8828c3770fe1a9258f63d214f97b2b4fcf1ff29e987c17982470698741b6" [label=""];
  "sha256:025c1be8dea25d6b702b9391fb833a01852b1ccfa90f6ec4dc998517114c8571" -> "sha256:c41f8828c3770fe1a9258f63d214f97b2b4fcf1ff29e987c17982470698741b6" [label=""];
  "sha256:c41f8828c3770fe1a9258f63d214f97b2b4fcf1ff29e987c17982470698741b6" -> "sha256:6b16085c00fe8500f9095bc6fcea1d36a28c33962aa7c8f92ecaffd05c103d05" [label=""];
  "sha256:6b16085c00fe8500f9095bc6fcea1d36a28c33962aa7c8f92ecaffd05c103d05" -> "sha256:b5354ebc688aa8a3bf963b79fd59d67d006447ebc9c0bc28aae414a09d01720c" [label=""];
  "sha256:b5354ebc688aa8a3bf963b79fd59d67d006447ebc9c0bc28aae414a09d01720c" -> "sha256:1e748df83719e5fda72e5bcd1d653acfd1ac5d0b789718f599213c4d4110ad8d" [label=""];
  "sha256:1e748df83719e5fda72e5bcd1d653acfd1ac5d0b789718f599213c4d4110ad8d" -> "sha256:cfbd736fee9465b296ef3aecc196017019dc5deaefeb5dc4e58bdff7df8432c1" [label=""];
  "sha256:cfbd736fee9465b296ef3aecc196017019dc5deaefeb5dc4e58bdff7df8432c1" -> "sha256:64e16bb4b2854cc3d344ca261c1b5c7979b6f220a86c8e304c413b953e207476" [label=""];
}

