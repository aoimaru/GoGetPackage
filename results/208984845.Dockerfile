[app/sources/208984845.Dockerfile]
digraph {
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" [label="docker-image://docker.io/library/golang:1.6" shape="ellipse"];
  "sha256:ef0b7bfc2f95960ca49c08a97b41c766e032e7fd7cb617ee860a5b4870bc514d" [label="/bin/sh -c wget http://storage.googleapis.com/kubernetes-release/release/v1.7.2/bin/linux/amd64/kubectl -O /usr/bin/kubectl &&     chmod +x /usr/bin/kubectl" shape="box"];
  "sha256:d58e55776d24b19b33997f8ad4cbab62354150f592d652f833e08ab72413a63f" [label="/bin/sh -c mkdir -p /go/src/app" shape="box"];
  "sha256:ef2d49fd1b0388419e8fd616203e96de4ef93a643bc29c2aa78b7b422ad33283" [label="mkdir{path=/go/src/app}" shape="note"];
  "sha256:cdd2d1d5abbb14d49a183d6ca3b59f334445d10b6630861adc85384a3653bd84" [label="local://context" shape="ellipse"];
  "sha256:994e391dd87147dc233c9627a7f524b74a4c132023557957e3f87eb7bf443ac3" [label="copy{src=/, dest=/go/src/app/}" shape="note"];
  "sha256:9a111f83903795b8a518df8cf5899895a1e68e827454cd0fad66a5895999154c" [label="/bin/sh -c go-wrapper download" shape="box"];
  "sha256:2c41634d2475eefc6787d0855ae0d4e920c3fa152ffc2356ec78921fc777c705" [label="/bin/sh -c go-wrapper install" shape="box"];
  "sha256:aa346fbb1bb59b7527a3bf54a98cbdf33ea83163d51e7cbe3e4d2874d31cd704" [label="sha256:aa346fbb1bb59b7527a3bf54a98cbdf33ea83163d51e7cbe3e4d2874d31cd704" shape="plaintext"];
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" -> "sha256:ef0b7bfc2f95960ca49c08a97b41c766e032e7fd7cb617ee860a5b4870bc514d" [label=""];
  "sha256:ef0b7bfc2f95960ca49c08a97b41c766e032e7fd7cb617ee860a5b4870bc514d" -> "sha256:d58e55776d24b19b33997f8ad4cbab62354150f592d652f833e08ab72413a63f" [label=""];
  "sha256:d58e55776d24b19b33997f8ad4cbab62354150f592d652f833e08ab72413a63f" -> "sha256:ef2d49fd1b0388419e8fd616203e96de4ef93a643bc29c2aa78b7b422ad33283" [label=""];
  "sha256:ef2d49fd1b0388419e8fd616203e96de4ef93a643bc29c2aa78b7b422ad33283" -> "sha256:994e391dd87147dc233c9627a7f524b74a4c132023557957e3f87eb7bf443ac3" [label=""];
  "sha256:cdd2d1d5abbb14d49a183d6ca3b59f334445d10b6630861adc85384a3653bd84" -> "sha256:994e391dd87147dc233c9627a7f524b74a4c132023557957e3f87eb7bf443ac3" [label=""];
  "sha256:994e391dd87147dc233c9627a7f524b74a4c132023557957e3f87eb7bf443ac3" -> "sha256:9a111f83903795b8a518df8cf5899895a1e68e827454cd0fad66a5895999154c" [label=""];
  "sha256:9a111f83903795b8a518df8cf5899895a1e68e827454cd0fad66a5895999154c" -> "sha256:2c41634d2475eefc6787d0855ae0d4e920c3fa152ffc2356ec78921fc777c705" [label=""];
  "sha256:2c41634d2475eefc6787d0855ae0d4e920c3fa152ffc2356ec78921fc777c705" -> "sha256:aa346fbb1bb59b7527a3bf54a98cbdf33ea83163d51e7cbe3e4d2874d31cd704" [label=""];
}

