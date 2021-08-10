[app/sources/296194622.Dockerfile]
digraph {
  "sha256:48d786d7f8a2a1b0ef15cd4958c28fd32b783a1ef4d6cacd69882fe2947af15a" [label="docker-image://docker.io/library/composer:latest" shape="ellipse"];
  "sha256:756a139c2b9bcf89d06f5543a153f054c0e0fb7ea659958cbe6083aaeb9d6190" [label="/bin/sh -c composer config -g repo.packagist composer https://packagist.phpcomposer.com" shape="box"];
  "sha256:2c4aed2972d533ed997bdb6a09a2b5998a0c6473b683f975d220155b2ad65480" [label="sha256:2c4aed2972d533ed997bdb6a09a2b5998a0c6473b683f975d220155b2ad65480" shape="plaintext"];
  "sha256:48d786d7f8a2a1b0ef15cd4958c28fd32b783a1ef4d6cacd69882fe2947af15a" -> "sha256:756a139c2b9bcf89d06f5543a153f054c0e0fb7ea659958cbe6083aaeb9d6190" [label=""];
  "sha256:756a139c2b9bcf89d06f5543a153f054c0e0fb7ea659958cbe6083aaeb9d6190" -> "sha256:2c4aed2972d533ed997bdb6a09a2b5998a0c6473b683f975d220155b2ad65480" [label=""];
}

