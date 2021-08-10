[app/sources/301390159.Dockerfile]
digraph {
  "sha256:71f810326349276f8b7acb21f2c9853cc7de24e695e2afddc595d23f22871b25" [label="docker-image://docker.io/gentoo/stage3-amd64:latest" shape="ellipse"];
  "sha256:9afefe2a551c42824f1cf91c304efc5ae8009f7e8cc781f0942be81223edab84" [label="/bin/sh -c echo \"Test dockerfile builds.\"" shape="box"];
  "sha256:82cbb63e8eb291eb0aeed7e14231133ec84bb2b72b93db85e12fa8c52752ebe7" [label="sha256:82cbb63e8eb291eb0aeed7e14231133ec84bb2b72b93db85e12fa8c52752ebe7" shape="plaintext"];
  "sha256:71f810326349276f8b7acb21f2c9853cc7de24e695e2afddc595d23f22871b25" -> "sha256:9afefe2a551c42824f1cf91c304efc5ae8009f7e8cc781f0942be81223edab84" [label=""];
  "sha256:9afefe2a551c42824f1cf91c304efc5ae8009f7e8cc781f0942be81223edab84" -> "sha256:82cbb63e8eb291eb0aeed7e14231133ec84bb2b72b93db85e12fa8c52752ebe7" [label=""];
}

