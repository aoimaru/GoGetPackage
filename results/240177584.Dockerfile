[app/sources/240177584.Dockerfile]
digraph {
  "sha256:414cd28b99837ee127173add3b2718a4d83d6ecc4b5f169a17d3c6bbd22a83a0" [label="docker-image://docker.io/egovio/apline-jre:8u121" shape="ellipse"];
  "sha256:21fcf4db3995d38821fef5560e3f4aeae3739499c6dac7e2c1b0a01630e1585f" [label="local://context" shape="ellipse"];
  "sha256:dfb79278ec7afb3d7bb14181c00ab3c3f5161002b0ad666c790fd9fdb4386c9f" [label="copy{src=/target/lcms-workflow-0.0.1-SNAPSHOT.jar, dest=/opt/egov/lcms-workflow.jar}" shape="note"];
  "sha256:2e60b7018991a93c2ea28a032cbc48ed877248ea65d8542c7303f1035b63abcd" [label="copy{src=/start.sh, dest=/usr/bin/start.sh}" shape="note"];
  "sha256:4cf53bcaa89b36c4e38482f84ea1c68699d7e0ce9c00ea366c0fcd9205205064" [label="/bin/sh -c chmod +x /usr/bin/start.sh" shape="box"];
  "sha256:009bb014dc214086798f784f7b67fa365a2d652da2afa4e8128b559124eea065" [label="sha256:009bb014dc214086798f784f7b67fa365a2d652da2afa4e8128b559124eea065" shape="plaintext"];
  "sha256:414cd28b99837ee127173add3b2718a4d83d6ecc4b5f169a17d3c6bbd22a83a0" -> "sha256:dfb79278ec7afb3d7bb14181c00ab3c3f5161002b0ad666c790fd9fdb4386c9f" [label=""];
  "sha256:21fcf4db3995d38821fef5560e3f4aeae3739499c6dac7e2c1b0a01630e1585f" -> "sha256:dfb79278ec7afb3d7bb14181c00ab3c3f5161002b0ad666c790fd9fdb4386c9f" [label=""];
  "sha256:dfb79278ec7afb3d7bb14181c00ab3c3f5161002b0ad666c790fd9fdb4386c9f" -> "sha256:2e60b7018991a93c2ea28a032cbc48ed877248ea65d8542c7303f1035b63abcd" [label=""];
  "sha256:21fcf4db3995d38821fef5560e3f4aeae3739499c6dac7e2c1b0a01630e1585f" -> "sha256:2e60b7018991a93c2ea28a032cbc48ed877248ea65d8542c7303f1035b63abcd" [label=""];
  "sha256:2e60b7018991a93c2ea28a032cbc48ed877248ea65d8542c7303f1035b63abcd" -> "sha256:4cf53bcaa89b36c4e38482f84ea1c68699d7e0ce9c00ea366c0fcd9205205064" [label=""];
  "sha256:4cf53bcaa89b36c4e38482f84ea1c68699d7e0ce9c00ea366c0fcd9205205064" -> "sha256:009bb014dc214086798f784f7b67fa365a2d652da2afa4e8128b559124eea065" [label=""];
}

