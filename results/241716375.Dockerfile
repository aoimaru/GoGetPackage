[app/sources/241716375.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:cab33040f1464c0441e2b7e9905a123a717f062b11ae703a96fa6f6a038127ee" [label="/bin/sh -c apk update && apk upgrade" shape="box"];
  "sha256:217ade2cf03a79c7552ff1cc723490c777271c85399f030286ff491a54cb32f5" [label="/bin/sh -c apk add  --no-cache unzip ca-certificates openssl" shape="box"];
  "sha256:e4cefa209471eba14e3348f1bc57f9e069aa98775b72dec6ea7d8f424be69180" [label="/bin/sh -c apk add --no-cache --virtual .build-deps go git libc-dev" shape="box"];
  "sha256:f93dd506a704d93061408a4542adebd1b24b06a73ba33ff911242ded4af5faa3" [label="mkdir{path=/mlxsh}" shape="note"];
  "sha256:d077a6e8d6b5408bc0e05b1a4fdef3980849edefaa4a308948ec7fb333f877e2" [label="/bin/sh -c go get github.com/ipcjk/mlxsh" shape="box"];
  "sha256:f6a86d62d77e686239926e4704d2ba8c5814162d395af2786ab3b91bb559e5c9" [label="mkdir{path=/mlxsh}" shape="note"];
  "sha256:dfdc218c1e984c2400c3a2690c1e20b399cc9becd3f5574d5f906f82a11ea3f7" [label="copy{src=/root/go/bin/mlxsh, dest=/mlxsh/mlxsh}" shape="note"];
  "sha256:c979b0ca0e1747e348f97c90e6c844fa5b0c1e9346c395aa02e06c59bd1e07e5" [label="copy{src=/root/go/src/github.com/ipcjk/mlxsh/mlxsh.yaml, dest=/mlxsh/mlxsh.yaml}" shape="note"];
  "sha256:48297932c7bec934244c3794f701765b40982287200c28be891b1f6d91ee3ded" [label="sha256:48297932c7bec934244c3794f701765b40982287200c28be891b1f6d91ee3ded" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:cab33040f1464c0441e2b7e9905a123a717f062b11ae703a96fa6f6a038127ee" [label=""];
  "sha256:cab33040f1464c0441e2b7e9905a123a717f062b11ae703a96fa6f6a038127ee" -> "sha256:217ade2cf03a79c7552ff1cc723490c777271c85399f030286ff491a54cb32f5" [label=""];
  "sha256:217ade2cf03a79c7552ff1cc723490c777271c85399f030286ff491a54cb32f5" -> "sha256:e4cefa209471eba14e3348f1bc57f9e069aa98775b72dec6ea7d8f424be69180" [label=""];
  "sha256:e4cefa209471eba14e3348f1bc57f9e069aa98775b72dec6ea7d8f424be69180" -> "sha256:f93dd506a704d93061408a4542adebd1b24b06a73ba33ff911242ded4af5faa3" [label=""];
  "sha256:f93dd506a704d93061408a4542adebd1b24b06a73ba33ff911242ded4af5faa3" -> "sha256:d077a6e8d6b5408bc0e05b1a4fdef3980849edefaa4a308948ec7fb333f877e2" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:f6a86d62d77e686239926e4704d2ba8c5814162d395af2786ab3b91bb559e5c9" [label=""];
  "sha256:f6a86d62d77e686239926e4704d2ba8c5814162d395af2786ab3b91bb559e5c9" -> "sha256:dfdc218c1e984c2400c3a2690c1e20b399cc9becd3f5574d5f906f82a11ea3f7" [label=""];
  "sha256:d077a6e8d6b5408bc0e05b1a4fdef3980849edefaa4a308948ec7fb333f877e2" -> "sha256:dfdc218c1e984c2400c3a2690c1e20b399cc9becd3f5574d5f906f82a11ea3f7" [label=""];
  "sha256:dfdc218c1e984c2400c3a2690c1e20b399cc9becd3f5574d5f906f82a11ea3f7" -> "sha256:c979b0ca0e1747e348f97c90e6c844fa5b0c1e9346c395aa02e06c59bd1e07e5" [label=""];
  "sha256:d077a6e8d6b5408bc0e05b1a4fdef3980849edefaa4a308948ec7fb333f877e2" -> "sha256:c979b0ca0e1747e348f97c90e6c844fa5b0c1e9346c395aa02e06c59bd1e07e5" [label=""];
  "sha256:c979b0ca0e1747e348f97c90e6c844fa5b0c1e9346c395aa02e06c59bd1e07e5" -> "sha256:48297932c7bec934244c3794f701765b40982287200c28be891b1f6d91ee3ded" [label=""];
}

