[app/sources/222746156.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:8673a80fe201fd638aef33b8a70dbe37ee87b62e04d24cc5f3a8a8be3dd2e220" [label="local://context" shape="ellipse"];
  "sha256:67f82a4797d1e4f956e933dadb9ab3b0a974a857fba3d7f7a67aae290aecce23" [label="copy{src=/install.sh, dest=/tmp/install.sh}" shape="note"];
  "sha256:cf74eb4eeda9801721b944b9aec47d2974f76dfa46e761691b5bf90998e1853c" [label="copy{src=/start.sh, dest=/tmp/start.sh}" shape="note"];
  "sha256:e5665c7464435be02714612e52a9dabfdf29c1b88399df8e924bfdad1640231a" [label="/bin/sh -c chmod 777 /tmp/install.sh" shape="box"];
  "sha256:c61b5994e2a026a110ebdb9e3d6448e5119b6d5b77a080d2724eeb9b7876efa5" [label="/bin/sh -c /tmp/install.sh" shape="box"];
  "sha256:69f41f72b06b15c651313295f87444520e5a453bc63d62205f8fee16a59c91dc" [label="sha256:69f41f72b06b15c651313295f87444520e5a453bc63d62205f8fee16a59c91dc" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:67f82a4797d1e4f956e933dadb9ab3b0a974a857fba3d7f7a67aae290aecce23" [label=""];
  "sha256:8673a80fe201fd638aef33b8a70dbe37ee87b62e04d24cc5f3a8a8be3dd2e220" -> "sha256:67f82a4797d1e4f956e933dadb9ab3b0a974a857fba3d7f7a67aae290aecce23" [label=""];
  "sha256:67f82a4797d1e4f956e933dadb9ab3b0a974a857fba3d7f7a67aae290aecce23" -> "sha256:cf74eb4eeda9801721b944b9aec47d2974f76dfa46e761691b5bf90998e1853c" [label=""];
  "sha256:8673a80fe201fd638aef33b8a70dbe37ee87b62e04d24cc5f3a8a8be3dd2e220" -> "sha256:cf74eb4eeda9801721b944b9aec47d2974f76dfa46e761691b5bf90998e1853c" [label=""];
  "sha256:cf74eb4eeda9801721b944b9aec47d2974f76dfa46e761691b5bf90998e1853c" -> "sha256:e5665c7464435be02714612e52a9dabfdf29c1b88399df8e924bfdad1640231a" [label=""];
  "sha256:e5665c7464435be02714612e52a9dabfdf29c1b88399df8e924bfdad1640231a" -> "sha256:c61b5994e2a026a110ebdb9e3d6448e5119b6d5b77a080d2724eeb9b7876efa5" [label=""];
  "sha256:c61b5994e2a026a110ebdb9e3d6448e5119b6d5b77a080d2724eeb9b7876efa5" -> "sha256:69f41f72b06b15c651313295f87444520e5a453bc63d62205f8fee16a59c91dc" [label=""];
}

