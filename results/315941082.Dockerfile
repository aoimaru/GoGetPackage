[app/sources/315941082.Dockerfile]
digraph {
  "sha256:c5cc4bc6a27867a01e4723b8b93de174db9d94a4457b5e91b6cde9ffa6ece29c" [label="local://context" shape="ellipse"];
  "sha256:983819d851f4f9ea0804e6183b808d49480bc6da3fc38dfcc1003783176bb1e3" [label="docker-image://docker.io/dmcgowan/token-server@sha256:0eab50ebdff5b6b95b3addf4edbd8bd2f5b940f27b41b43c94afdf05863a81af" shape="ellipse"];
  "sha256:d572dbc54b5e226e6d8cbafa40d980cdb0b3af9437de4c197b4ad2a9cc7fc759" [label="copy{src=/.htpasswd, dest=/.htpasswd}" shape="note"];
  "sha256:94d77d033b4cc213d971962efc071945be2ceb5f062b552d463ee1390a9f0ac7" [label="copy{src=/certs/auth.localregistry.cert, dest=/tls.cert}" shape="note"];
  "sha256:8ee1c0bf9b36c4d82085999b256be2a52e780a5a4f57eedd4bba5ebbbef516e8" [label="copy{src=/certs/auth.localregistry.key, dest=/tls.key}" shape="note"];
  "sha256:6981b61c3ddaffb523923bbc16a74c34b6e907f5f649ff3670bdf66eebb8feeb" [label="copy{src=/certs/signing.key, dest=/sign.key}" shape="note"];
  "sha256:5d69ddd380a313b28151aca7ea16cd21a781da31dd1fcae87b752a5932fa13b8" [label="sha256:5d69ddd380a313b28151aca7ea16cd21a781da31dd1fcae87b752a5932fa13b8" shape="plaintext"];
  "sha256:983819d851f4f9ea0804e6183b808d49480bc6da3fc38dfcc1003783176bb1e3" -> "sha256:d572dbc54b5e226e6d8cbafa40d980cdb0b3af9437de4c197b4ad2a9cc7fc759" [label=""];
  "sha256:c5cc4bc6a27867a01e4723b8b93de174db9d94a4457b5e91b6cde9ffa6ece29c" -> "sha256:d572dbc54b5e226e6d8cbafa40d980cdb0b3af9437de4c197b4ad2a9cc7fc759" [label=""];
  "sha256:d572dbc54b5e226e6d8cbafa40d980cdb0b3af9437de4c197b4ad2a9cc7fc759" -> "sha256:94d77d033b4cc213d971962efc071945be2ceb5f062b552d463ee1390a9f0ac7" [label=""];
  "sha256:c5cc4bc6a27867a01e4723b8b93de174db9d94a4457b5e91b6cde9ffa6ece29c" -> "sha256:94d77d033b4cc213d971962efc071945be2ceb5f062b552d463ee1390a9f0ac7" [label=""];
  "sha256:94d77d033b4cc213d971962efc071945be2ceb5f062b552d463ee1390a9f0ac7" -> "sha256:8ee1c0bf9b36c4d82085999b256be2a52e780a5a4f57eedd4bba5ebbbef516e8" [label=""];
  "sha256:c5cc4bc6a27867a01e4723b8b93de174db9d94a4457b5e91b6cde9ffa6ece29c" -> "sha256:8ee1c0bf9b36c4d82085999b256be2a52e780a5a4f57eedd4bba5ebbbef516e8" [label=""];
  "sha256:8ee1c0bf9b36c4d82085999b256be2a52e780a5a4f57eedd4bba5ebbbef516e8" -> "sha256:6981b61c3ddaffb523923bbc16a74c34b6e907f5f649ff3670bdf66eebb8feeb" [label=""];
  "sha256:c5cc4bc6a27867a01e4723b8b93de174db9d94a4457b5e91b6cde9ffa6ece29c" -> "sha256:6981b61c3ddaffb523923bbc16a74c34b6e907f5f649ff3670bdf66eebb8feeb" [label=""];
  "sha256:6981b61c3ddaffb523923bbc16a74c34b6e907f5f649ff3670bdf66eebb8feeb" -> "sha256:5d69ddd380a313b28151aca7ea16cd21a781da31dd1fcae87b752a5932fa13b8" [label=""];
}

