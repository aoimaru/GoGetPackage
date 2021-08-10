[app/sources/310738962.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:5b7c962f689857db2f050ea178447b40b64916333c5ed7fb93007701280c552f" [label="/bin/sh -c apk add -U bash curl git sudo" shape="box"];
  "sha256:a8c33c9329520b4e6eb23c5186f262009abfa38d8c1e175dff2190263585de6a" [label="https://raw.githubusercontent.com/fishworks/gofish/master/scripts/install.sh" shape="ellipse"];
  "sha256:41adda54d0e51d6a12d5c0b506546a1ab8bb3bc5fe359539f6d9f4e3677c7f72" [label="copy{src=/install.sh, dest=/install.sh}" shape="note"];
  "sha256:7b6df5491b687bb5a206b4b6b9fef1bf840c7c1fd855478d7e2ebaf1753a81c7" [label="/bin/sh -c bash install.sh" shape="box"];
  "sha256:67e84881bb9ca8aaa1d0d882fc9e935dce2adff63bfed26172d31214c61ab852" [label="sha256:67e84881bb9ca8aaa1d0d882fc9e935dce2adff63bfed26172d31214c61ab852" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:5b7c962f689857db2f050ea178447b40b64916333c5ed7fb93007701280c552f" [label=""];
  "sha256:5b7c962f689857db2f050ea178447b40b64916333c5ed7fb93007701280c552f" -> "sha256:41adda54d0e51d6a12d5c0b506546a1ab8bb3bc5fe359539f6d9f4e3677c7f72" [label=""];
  "sha256:a8c33c9329520b4e6eb23c5186f262009abfa38d8c1e175dff2190263585de6a" -> "sha256:41adda54d0e51d6a12d5c0b506546a1ab8bb3bc5fe359539f6d9f4e3677c7f72" [label=""];
  "sha256:41adda54d0e51d6a12d5c0b506546a1ab8bb3bc5fe359539f6d9f4e3677c7f72" -> "sha256:7b6df5491b687bb5a206b4b6b9fef1bf840c7c1fd855478d7e2ebaf1753a81c7" [label=""];
  "sha256:7b6df5491b687bb5a206b4b6b9fef1bf840c7c1fd855478d7e2ebaf1753a81c7" -> "sha256:67e84881bb9ca8aaa1d0d882fc9e935dce2adff63bfed26172d31214c61ab852" [label=""];
}

