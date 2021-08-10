[app/sources/391977033.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:4b2882775d9cc4b70039ec2218f90c830850e39d8dcdb894cb87d40fb88f3be1" [label="/bin/sh -c apk --no-cache add ca-certificates jq bash &&     wget https://storage.googleapis.com/kubernetes-release/release/v1.13.5/bin/linux/amd64/kubectl -O /bin/kubectl &&     chmod +x /bin/kubectl &&     wget https://storage.googleapis.com/kubernetes-helm/helm-v2.12.1-linux-amd64.tar.gz -O /helm.tgz &&     tar -z -x -C /bin -f /helm.tgz --strip-components=1 linux-amd64/helm &&     rm -f /helm.tgz &&     helm init --client-only &&     mkdir /hooks" shape="box"];
  "sha256:87bedb9b92fe1d908e572937ea666ccf44e3217665580217ffc4f84a39b6810c" [label="docker-image://docker.io/library/golang:1.11-alpine3.9" shape="ellipse"];
  "sha256:46a27de4af60a54a0d367b7c32d414ace01185f7f4e757f1951ef4c3989a0de5" [label="/bin/sh -c apk --no-cache add git ca-certificates" shape="box"];
  "sha256:e1c6e2c103493d6bfed3c9ac44bed3587c71366601314d06ef9827b28827ed66" [label="local://context" shape="ellipse"];
  "sha256:0dd6e79f21c746062eaff77542566adb90efe4cab49f3334f7ecbad7b29eb132" [label="copy{src=/, dest=/go/src/github.com/flant/addon-operator}" shape="note"];
  "sha256:3bbe72e71a5d299ad6fba3499ad4fa801d21383cb19faa32e0f167c79eaccbdc" [label="/bin/sh -c go get -d github.com/flant/addon-operator/..." shape="box"];
  "sha256:3193443076ba61c8e0013096e83819d7010b43739881fd446352c66181daf44a" [label="mkdir{path=/go/src/github.com/flant/addon-operator}" shape="note"];
  "sha256:8a90f48fcbbafe8c9a3707c9fef9c79ca79ebf73c6a7ba0085e25b718701d08f" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -ldflags=\"-s -w\" -o addon-operator ./cmd/addon-operator" shape="box"];
  "sha256:48845d3de06e679db84ec86f39061d53ecfe6dcd335c45141a0e5c5a5ad6dc6d" [label="copy{src=/go/src/github.com/flant/addon-operator/addon-operator, dest=/}" shape="note"];
  "sha256:a3dcde74767d2eb12b29b6e52be98fec9ab11f2e16b3135d661c9ab077bb8c1d" [label="sha256:a3dcde74767d2eb12b29b6e52be98fec9ab11f2e16b3135d661c9ab077bb8c1d" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:4b2882775d9cc4b70039ec2218f90c830850e39d8dcdb894cb87d40fb88f3be1" [label=""];
  "sha256:87bedb9b92fe1d908e572937ea666ccf44e3217665580217ffc4f84a39b6810c" -> "sha256:46a27de4af60a54a0d367b7c32d414ace01185f7f4e757f1951ef4c3989a0de5" [label=""];
  "sha256:46a27de4af60a54a0d367b7c32d414ace01185f7f4e757f1951ef4c3989a0de5" -> "sha256:0dd6e79f21c746062eaff77542566adb90efe4cab49f3334f7ecbad7b29eb132" [label=""];
  "sha256:e1c6e2c103493d6bfed3c9ac44bed3587c71366601314d06ef9827b28827ed66" -> "sha256:0dd6e79f21c746062eaff77542566adb90efe4cab49f3334f7ecbad7b29eb132" [label=""];
  "sha256:0dd6e79f21c746062eaff77542566adb90efe4cab49f3334f7ecbad7b29eb132" -> "sha256:3bbe72e71a5d299ad6fba3499ad4fa801d21383cb19faa32e0f167c79eaccbdc" [label=""];
  "sha256:3bbe72e71a5d299ad6fba3499ad4fa801d21383cb19faa32e0f167c79eaccbdc" -> "sha256:3193443076ba61c8e0013096e83819d7010b43739881fd446352c66181daf44a" [label=""];
  "sha256:3193443076ba61c8e0013096e83819d7010b43739881fd446352c66181daf44a" -> "sha256:8a90f48fcbbafe8c9a3707c9fef9c79ca79ebf73c6a7ba0085e25b718701d08f" [label=""];
  "sha256:4b2882775d9cc4b70039ec2218f90c830850e39d8dcdb894cb87d40fb88f3be1" -> "sha256:48845d3de06e679db84ec86f39061d53ecfe6dcd335c45141a0e5c5a5ad6dc6d" [label=""];
  "sha256:8a90f48fcbbafe8c9a3707c9fef9c79ca79ebf73c6a7ba0085e25b718701d08f" -> "sha256:48845d3de06e679db84ec86f39061d53ecfe6dcd335c45141a0e5c5a5ad6dc6d" [label=""];
  "sha256:48845d3de06e679db84ec86f39061d53ecfe6dcd335c45141a0e5c5a5ad6dc6d" -> "sha256:a3dcde74767d2eb12b29b6e52be98fec9ab11f2e16b3135d661c9ab077bb8c1d" [label=""];
}

