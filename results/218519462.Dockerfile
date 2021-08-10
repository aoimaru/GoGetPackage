[app/sources/218519462.Dockerfile]
digraph {
  "sha256:9850003e5124264ca86254f2c23fe10aaa540963753f0aa9d3b61e20169c5c8a" [label="docker-image://docker.io/library/golang:1.4-cross" shape="ellipse"];
  "sha256:b83901fd48e63e5a9e1ada628f16f2f6218a747c440b4c9b91ccdfbc1d26b4cc" [label="local://context" shape="ellipse"];
  "sha256:e105c1ed8e4a4ee8959d4133fb17de26191cd8186613efb9ce1859422be98a79" [label="copy{src=/crosscompile.sh, dest=/usr/local/bin/crosscompile.sh}" shape="note"];
  "sha256:b8f3c94d8614a8ab3bd10589a886d4319db8b199d5129aabae2a15a02962b696" [label="/bin/sh -c chmod +x /usr/local/bin/crosscompile.sh" shape="box"];
  "sha256:bb3ece4645b3e1b0617aa2a6ffcc3b0b508918dbebf6ec11fe4c9582d15bb6b3" [label="sha256:bb3ece4645b3e1b0617aa2a6ffcc3b0b508918dbebf6ec11fe4c9582d15bb6b3" shape="plaintext"];
  "sha256:9850003e5124264ca86254f2c23fe10aaa540963753f0aa9d3b61e20169c5c8a" -> "sha256:e105c1ed8e4a4ee8959d4133fb17de26191cd8186613efb9ce1859422be98a79" [label=""];
  "sha256:b83901fd48e63e5a9e1ada628f16f2f6218a747c440b4c9b91ccdfbc1d26b4cc" -> "sha256:e105c1ed8e4a4ee8959d4133fb17de26191cd8186613efb9ce1859422be98a79" [label=""];
  "sha256:e105c1ed8e4a4ee8959d4133fb17de26191cd8186613efb9ce1859422be98a79" -> "sha256:b8f3c94d8614a8ab3bd10589a886d4319db8b199d5129aabae2a15a02962b696" [label=""];
  "sha256:b8f3c94d8614a8ab3bd10589a886d4319db8b199d5129aabae2a15a02962b696" -> "sha256:bb3ece4645b3e1b0617aa2a6ffcc3b0b508918dbebf6ec11fe4c9582d15bb6b3" [label=""];
}

