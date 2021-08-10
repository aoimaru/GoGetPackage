[app/sources/466584793.Dockerfile]
digraph {
  "sha256:da0b9950fc4dc4465f57a9e008ba78666d76e66a19049233ec4b0b8534d6ff17" [label="docker-image://docker.io/microsoft/azure-cli:2.0.47" shape="ellipse"];
  "sha256:e35dcd13460c5492c203398b7410b661ee451302516184190d70aeefa2562e60" [label="local://context" shape="ellipse"];
  "sha256:8f0bb80f83907f59620197ea1ac889192c7c653de641da640ef179f99af2e4f4" [label="copy{src=/LICENSE, dest=/},copy{src=/README.md, dest=/},copy{src=/THIRD_PARTY_NOTICE.md, dest=/}" shape="note"];
  "sha256:b0b050ef919dab43389a87fcc11c3481fb4075de491406dcfe9fa8ad75081811" [label="/bin/sh -c az extension add --name webapp   && apk update   && (apk info | xargs -n1 -I{} apk --quiet add {}-doc); true   && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:5f3abb6268f545ce0b4452333e73fbc5e7c66ee53f111a71d1832f05dbef80cf" [label="docker-image://docker.io/library/docker:stable" shape="ellipse"];
  "sha256:4ff12a93c1f8f4ac5fb64d1ad1afd18554a27971397a527bb6127d06e7da7ce8" [label="copy{src=/usr/local/bin/docker, dest=/usr/local/bin}" shape="note"];
  "sha256:bec96741558b91179bf3bfbb7e104f3dbdf15c1cd5acddc5613e221d123b3583" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:f2b5c06c25a5aeb9b28a21d39b11c44b4e3c61d0c296243af65bcac42d7c0e3c" [label="sha256:f2b5c06c25a5aeb9b28a21d39b11c44b4e3c61d0c296243af65bcac42d7c0e3c" shape="plaintext"];
  "sha256:da0b9950fc4dc4465f57a9e008ba78666d76e66a19049233ec4b0b8534d6ff17" -> "sha256:8f0bb80f83907f59620197ea1ac889192c7c653de641da640ef179f99af2e4f4" [label=""];
  "sha256:e35dcd13460c5492c203398b7410b661ee451302516184190d70aeefa2562e60" -> "sha256:8f0bb80f83907f59620197ea1ac889192c7c653de641da640ef179f99af2e4f4" [label=""];
  "sha256:8f0bb80f83907f59620197ea1ac889192c7c653de641da640ef179f99af2e4f4" -> "sha256:b0b050ef919dab43389a87fcc11c3481fb4075de491406dcfe9fa8ad75081811" [label=""];
  "sha256:b0b050ef919dab43389a87fcc11c3481fb4075de491406dcfe9fa8ad75081811" -> "sha256:4ff12a93c1f8f4ac5fb64d1ad1afd18554a27971397a527bb6127d06e7da7ce8" [label=""];
  "sha256:5f3abb6268f545ce0b4452333e73fbc5e7c66ee53f111a71d1832f05dbef80cf" -> "sha256:4ff12a93c1f8f4ac5fb64d1ad1afd18554a27971397a527bb6127d06e7da7ce8" [label=""];
  "sha256:4ff12a93c1f8f4ac5fb64d1ad1afd18554a27971397a527bb6127d06e7da7ce8" -> "sha256:bec96741558b91179bf3bfbb7e104f3dbdf15c1cd5acddc5613e221d123b3583" [label=""];
  "sha256:e35dcd13460c5492c203398b7410b661ee451302516184190d70aeefa2562e60" -> "sha256:bec96741558b91179bf3bfbb7e104f3dbdf15c1cd5acddc5613e221d123b3583" [label=""];
  "sha256:bec96741558b91179bf3bfbb7e104f3dbdf15c1cd5acddc5613e221d123b3583" -> "sha256:f2b5c06c25a5aeb9b28a21d39b11c44b4e3c61d0c296243af65bcac42d7c0e3c" [label=""];
}

