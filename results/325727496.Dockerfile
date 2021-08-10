[app/sources/325727496.Dockerfile]
digraph {
  "sha256:b6e86ebee84cb514a7c4b14e9aac384d282d9f7bf4d8e607679f6631b58e314c" [label="docker-image://registry.svc.ci.openshift.org/openshift/origin-v4.0:base" shape="ellipse"];
  "sha256:98117ed87c5336a695d7a622561a3c64a51b7b1965e2a1d6974a51fd60dc447d" [label="docker-image://registry.svc.ci.openshift.org/openshift/release:golang-1.12" shape="ellipse"];
  "sha256:4876c19186e50687a904c9dbb8c6d2a65678c2ea5869a2193f36c1956e2bb133" [label="mkdir{path=/go/src/github.com/openshift/machine-config-operator}" shape="note"];
  "sha256:36e3d6ba26c755a5f03b7fb33b1be6c0c7a3af371806d7a2542c5c3ab0c6e76f" [label="local://context" shape="ellipse"];
  "sha256:4e928959ec984075509c04138c53472875f432a2e68b4af7667071370b9bdb30" [label="copy{src=/, dest=/go/src/github.com/openshift/machine-config-operator/}" shape="note"];
  "sha256:3108b1ac3ec546ca1890aa03cc0d0419ee2c0ef02639c63b9e72ae64dee0d2f2" [label="/bin/sh -c WHAT=machine-config-server ./hack/build-go.sh" shape="box"];
  "sha256:52297b91245b3239fe5313b6d6bf4d87d77974c3042b965bbd59a7a7ff44ba4b" [label="copy{src=/go/src/github.com/openshift/machine-config-operator/_output/linux/amd64/machine-config-server, dest=/usr/bin/}" shape="note"];
  "sha256:6448451ae325ff334190e483fcd94b28a42408252998a1bc5be0bba638d5fd33" [label="sha256:6448451ae325ff334190e483fcd94b28a42408252998a1bc5be0bba638d5fd33" shape="plaintext"];
  "sha256:98117ed87c5336a695d7a622561a3c64a51b7b1965e2a1d6974a51fd60dc447d" -> "sha256:4876c19186e50687a904c9dbb8c6d2a65678c2ea5869a2193f36c1956e2bb133" [label=""];
  "sha256:4876c19186e50687a904c9dbb8c6d2a65678c2ea5869a2193f36c1956e2bb133" -> "sha256:4e928959ec984075509c04138c53472875f432a2e68b4af7667071370b9bdb30" [label=""];
  "sha256:36e3d6ba26c755a5f03b7fb33b1be6c0c7a3af371806d7a2542c5c3ab0c6e76f" -> "sha256:4e928959ec984075509c04138c53472875f432a2e68b4af7667071370b9bdb30" [label=""];
  "sha256:4e928959ec984075509c04138c53472875f432a2e68b4af7667071370b9bdb30" -> "sha256:3108b1ac3ec546ca1890aa03cc0d0419ee2c0ef02639c63b9e72ae64dee0d2f2" [label=""];
  "sha256:b6e86ebee84cb514a7c4b14e9aac384d282d9f7bf4d8e607679f6631b58e314c" -> "sha256:52297b91245b3239fe5313b6d6bf4d87d77974c3042b965bbd59a7a7ff44ba4b" [label=""];
  "sha256:3108b1ac3ec546ca1890aa03cc0d0419ee2c0ef02639c63b9e72ae64dee0d2f2" -> "sha256:52297b91245b3239fe5313b6d6bf4d87d77974c3042b965bbd59a7a7ff44ba4b" [label=""];
  "sha256:52297b91245b3239fe5313b6d6bf4d87d77974c3042b965bbd59a7a7ff44ba4b" -> "sha256:6448451ae325ff334190e483fcd94b28a42408252998a1bc5be0bba638d5fd33" [label=""];
}

