[app/sources/282786203.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:d4206abec32e23fc23f305e7e6c43a1bbf5785571711ee000f8bb1c7b39ded73" [label="docker-image://docker.io/library/golang:1.12-stretch" shape="ellipse"];
  "sha256:623b8f22f970e620258b7360f7d34d6e91885192633aa756a7f3e045d188c1e1" [label="copy{src=/usr/local/go, dest=/usr/local/go}" shape="note"];
  "sha256:b33c3a95f522a9472aafcf1df8f562de03f493d4ef1c72d16a89e8cb9b5d302a" [label="/bin/sh -c apt-get update && apt-get install busybox-static" shape="box"];
  "sha256:01eab6a69fa516ca8eca21965f6b648b91ce0979b94546577901d7a2827daeb8" [label="/bin/sh -c mkdir -p \"$DESTDIR\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:30cb768edb9f9db5930eb13aac3f326b636e281a6a11ff461dd959b62a4e833a" [label="local://context" shape="ellipse"];
  "sha256:35293e83397bab0e3731d2738bbc75ca0ccb41696e81ff02d615c3692b70d237" [label="copy{src=/hack/test-images/metatron, dest=/go/src/github.com/Netflix/titus-executor/hack/test-images/metatron}" shape="note"];
  "sha256:869634236c1891d10a3629633c23fbd18c141154a6bdb632ca0fb7e85bc527ad" [label="copy{src=/api, dest=/go/src/github.com/Netflix/titus-executor/api}" shape="note"];
  "sha256:4c38752986ce3d7922b6919b6cf8c69e6bae07ddecd73faffa1736cee4682566" [label="copy{src=/vendor, dest=/go/src/github.com/Netflix/titus-executor/vendor}" shape="note"];
  "sha256:73ad2deee9cf224de7fc2b6de7958e6f619fa6b9644f31d5220580ae0808149f" [label="/bin/sh -c cd $DESTDIR/metatron-identity && go build -tags netgo -o metatron-identity main.go" shape="box"];
  "sha256:8a285ed011224dd5e1c053be62eb8728c62130989b7528d20494ebff3a40d9d4" [label="copy{src=/go/src/github.com/Netflix/titus-executor/hack/test-images/metatron/metatron-identity/metatron-identity, dest=/titus/metatron/bin/metatron-identity}" shape="note"];
  "sha256:9dfe439e2d8f7e4f007d8e264ce2d7ca7dbd0f2050b7c2874b9447a545245ce2" [label="copy{src=/bin/busybox, dest=/titus/metatron/bin/busybox}" shape="note"];
  "sha256:01088f3c70a60b4bc08b819ffa216f625603ba06e3046c1d3ef487a78e8eb933" [label="copy{src=/hack/test-images/metatron/titus-metatrond, dest=/titus/metatron/bin/titus-metatrond}" shape="note"];
  "sha256:ab9a240eca2faa4839b06624d254b8a3535206d41b7b4b3133e02a38b04957e2" [label="sha256:ab9a240eca2faa4839b06624d254b8a3535206d41b7b4b3133e02a38b04957e2" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:623b8f22f970e620258b7360f7d34d6e91885192633aa756a7f3e045d188c1e1" [label=""];
  "sha256:d4206abec32e23fc23f305e7e6c43a1bbf5785571711ee000f8bb1c7b39ded73" -> "sha256:623b8f22f970e620258b7360f7d34d6e91885192633aa756a7f3e045d188c1e1" [label=""];
  "sha256:623b8f22f970e620258b7360f7d34d6e91885192633aa756a7f3e045d188c1e1" -> "sha256:b33c3a95f522a9472aafcf1df8f562de03f493d4ef1c72d16a89e8cb9b5d302a" [label=""];
  "sha256:b33c3a95f522a9472aafcf1df8f562de03f493d4ef1c72d16a89e8cb9b5d302a" -> "sha256:01eab6a69fa516ca8eca21965f6b648b91ce0979b94546577901d7a2827daeb8" [label=""];
  "sha256:01eab6a69fa516ca8eca21965f6b648b91ce0979b94546577901d7a2827daeb8" -> "sha256:35293e83397bab0e3731d2738bbc75ca0ccb41696e81ff02d615c3692b70d237" [label=""];
  "sha256:30cb768edb9f9db5930eb13aac3f326b636e281a6a11ff461dd959b62a4e833a" -> "sha256:35293e83397bab0e3731d2738bbc75ca0ccb41696e81ff02d615c3692b70d237" [label=""];
  "sha256:35293e83397bab0e3731d2738bbc75ca0ccb41696e81ff02d615c3692b70d237" -> "sha256:869634236c1891d10a3629633c23fbd18c141154a6bdb632ca0fb7e85bc527ad" [label=""];
  "sha256:30cb768edb9f9db5930eb13aac3f326b636e281a6a11ff461dd959b62a4e833a" -> "sha256:869634236c1891d10a3629633c23fbd18c141154a6bdb632ca0fb7e85bc527ad" [label=""];
  "sha256:869634236c1891d10a3629633c23fbd18c141154a6bdb632ca0fb7e85bc527ad" -> "sha256:4c38752986ce3d7922b6919b6cf8c69e6bae07ddecd73faffa1736cee4682566" [label=""];
  "sha256:30cb768edb9f9db5930eb13aac3f326b636e281a6a11ff461dd959b62a4e833a" -> "sha256:4c38752986ce3d7922b6919b6cf8c69e6bae07ddecd73faffa1736cee4682566" [label=""];
  "sha256:4c38752986ce3d7922b6919b6cf8c69e6bae07ddecd73faffa1736cee4682566" -> "sha256:73ad2deee9cf224de7fc2b6de7958e6f619fa6b9644f31d5220580ae0808149f" [label=""];
  "sha256:73ad2deee9cf224de7fc2b6de7958e6f619fa6b9644f31d5220580ae0808149f" -> "sha256:8a285ed011224dd5e1c053be62eb8728c62130989b7528d20494ebff3a40d9d4" [label=""];
  "sha256:8a285ed011224dd5e1c053be62eb8728c62130989b7528d20494ebff3a40d9d4" -> "sha256:9dfe439e2d8f7e4f007d8e264ce2d7ca7dbd0f2050b7c2874b9447a545245ce2" [label=""];
  "sha256:73ad2deee9cf224de7fc2b6de7958e6f619fa6b9644f31d5220580ae0808149f" -> "sha256:9dfe439e2d8f7e4f007d8e264ce2d7ca7dbd0f2050b7c2874b9447a545245ce2" [label=""];
  "sha256:9dfe439e2d8f7e4f007d8e264ce2d7ca7dbd0f2050b7c2874b9447a545245ce2" -> "sha256:01088f3c70a60b4bc08b819ffa216f625603ba06e3046c1d3ef487a78e8eb933" [label=""];
  "sha256:30cb768edb9f9db5930eb13aac3f326b636e281a6a11ff461dd959b62a4e833a" -> "sha256:01088f3c70a60b4bc08b819ffa216f625603ba06e3046c1d3ef487a78e8eb933" [label=""];
  "sha256:01088f3c70a60b4bc08b819ffa216f625603ba06e3046c1d3ef487a78e8eb933" -> "sha256:ab9a240eca2faa4839b06624d254b8a3535206d41b7b4b3133e02a38b04957e2" [label=""];
}

