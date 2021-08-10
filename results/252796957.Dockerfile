[app/sources/252796957.Dockerfile]
digraph {
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" [label="docker-image://docker.io/library/java:7" shape="ellipse"];
  "sha256:d43a2744f5f00f0248fc4cebea456f615770f082040a44cb59bc3ce49cbce71f" [label="local://context" shape="ellipse"];
  "sha256:d4558435925b4d8ca1de73db175950738c4f703e3c0aa039d92a9fa57e2c0e93" [label="copy{src=/src, dest=/home/root/javahelloworld/src}" shape="note"];
  "sha256:ecaad4799fca55a922992fee8f32022ba3e5d9251a928318911e1438631c6179" [label="mkdir{path=/home/root/javahelloworld}" shape="note"];
  "sha256:c71d49c27cc482f6ff45a65ab990a47012072aa90252494df530078c7d6a79fa" [label="/bin/sh -c mkdir bin" shape="box"];
  "sha256:c4aa4ab5167b2e1ff1f459b6376222b70d30fb5cb062fdbb27e1b906df566e46" [label="/bin/sh -c javac -d bin src/HelloWorld.java" shape="box"];
  "sha256:dcbdb4a0828a1f60818cb9fccf027a1054a9416c48e36c6123209c39feca7378" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:91e95c71834b6e5f01280aa452614c84e085c4c439bbfd9ecd4f545329a2642a" [label="/bin/sh -c apt-get install -y vim" shape="box"];
  "sha256:efb62fe767cea8b77067c17303d813b8096db524a71761c3febad7181a59fa79" [label="sha256:efb62fe767cea8b77067c17303d813b8096db524a71761c3febad7181a59fa79" shape="plaintext"];
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" -> "sha256:d4558435925b4d8ca1de73db175950738c4f703e3c0aa039d92a9fa57e2c0e93" [label=""];
  "sha256:d43a2744f5f00f0248fc4cebea456f615770f082040a44cb59bc3ce49cbce71f" -> "sha256:d4558435925b4d8ca1de73db175950738c4f703e3c0aa039d92a9fa57e2c0e93" [label=""];
  "sha256:d4558435925b4d8ca1de73db175950738c4f703e3c0aa039d92a9fa57e2c0e93" -> "sha256:ecaad4799fca55a922992fee8f32022ba3e5d9251a928318911e1438631c6179" [label=""];
  "sha256:ecaad4799fca55a922992fee8f32022ba3e5d9251a928318911e1438631c6179" -> "sha256:c71d49c27cc482f6ff45a65ab990a47012072aa90252494df530078c7d6a79fa" [label=""];
  "sha256:c71d49c27cc482f6ff45a65ab990a47012072aa90252494df530078c7d6a79fa" -> "sha256:c4aa4ab5167b2e1ff1f459b6376222b70d30fb5cb062fdbb27e1b906df566e46" [label=""];
  "sha256:c4aa4ab5167b2e1ff1f459b6376222b70d30fb5cb062fdbb27e1b906df566e46" -> "sha256:dcbdb4a0828a1f60818cb9fccf027a1054a9416c48e36c6123209c39feca7378" [label=""];
  "sha256:dcbdb4a0828a1f60818cb9fccf027a1054a9416c48e36c6123209c39feca7378" -> "sha256:91e95c71834b6e5f01280aa452614c84e085c4c439bbfd9ecd4f545329a2642a" [label=""];
  "sha256:91e95c71834b6e5f01280aa452614c84e085c4c439bbfd9ecd4f545329a2642a" -> "sha256:efb62fe767cea8b77067c17303d813b8096db524a71761c3febad7181a59fa79" [label=""];
}

