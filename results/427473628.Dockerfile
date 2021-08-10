[app/sources/427473628.Dockerfile]
digraph {
  "sha256:1e468f2763ceac8114c08afa0cb3927b6699fac2a90ef219bc35c480c86a3054" [label="docker-image://docker.io/librecores/librecores-ci:latest" shape="ellipse"];
  "sha256:cd0b8e5f6d55933233efcf6bdc0bf4deaecd320813c958f91de6d852f92356ae" [label="/bin/sh -c apt-get update && apt-get install -y  build-essential  autoconf  git  curl  python3-pip  libelf-dev  flex bison" shape="box"];
  "sha256:43c72c58dbd70d8878b50af47fd6f4dc45051c3b6ef4626c88aff2219842f729" [label="/bin/sh -c groupadd -g 999 travis &&     useradd -m -r -u 999 -g travis travis" shape="box"];
  "sha256:c98c016f44182cfc62859665bd87b58bb5a38bbf02857b6fdb3971a428606fb7" [label="/bin/sh -c mkdir -p /tmp/src/cores/mor1kx" shape="box"];
  "sha256:2940d2c5f95a3ee27be1d0ef46e18bbc6d374d35daf6efbdca3e8b0ebeff1527" [label="mkdir{path=/tmp/src/cores/mor1kx}" shape="note"];
  "sha256:39957e5be5af14b2e64c7688f3b527a1d4fd9799ff34a16adfc41b0c5b72352a" [label="sha256:39957e5be5af14b2e64c7688f3b527a1d4fd9799ff34a16adfc41b0c5b72352a" shape="plaintext"];
  "sha256:1e468f2763ceac8114c08afa0cb3927b6699fac2a90ef219bc35c480c86a3054" -> "sha256:cd0b8e5f6d55933233efcf6bdc0bf4deaecd320813c958f91de6d852f92356ae" [label=""];
  "sha256:cd0b8e5f6d55933233efcf6bdc0bf4deaecd320813c958f91de6d852f92356ae" -> "sha256:43c72c58dbd70d8878b50af47fd6f4dc45051c3b6ef4626c88aff2219842f729" [label=""];
  "sha256:43c72c58dbd70d8878b50af47fd6f4dc45051c3b6ef4626c88aff2219842f729" -> "sha256:c98c016f44182cfc62859665bd87b58bb5a38bbf02857b6fdb3971a428606fb7" [label=""];
  "sha256:c98c016f44182cfc62859665bd87b58bb5a38bbf02857b6fdb3971a428606fb7" -> "sha256:2940d2c5f95a3ee27be1d0ef46e18bbc6d374d35daf6efbdca3e8b0ebeff1527" [label=""];
  "sha256:2940d2c5f95a3ee27be1d0ef46e18bbc6d374d35daf6efbdca3e8b0ebeff1527" -> "sha256:39957e5be5af14b2e64c7688f3b527a1d4fd9799ff34a16adfc41b0c5b72352a" [label=""];
}

