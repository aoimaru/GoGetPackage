[app/sources/395163133.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:b854c5ba23e2728d34b4da3a5fdb67ababab4d9458bcc15c4e2acb1a00eb80bb" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:0ef71920194545b51a5dfe2707171fd1d19861668d20fa39affe031279b5b06e" [label="/bin/sh -c apt-get -y install packaging-dev equivs" shape="box"];
  "sha256:28b9a9f402708d0272f6c4c07ca481de4fe507d97848fc568b38b53ba0770faa" [label="/bin/sh -c useradd -s /bin/bash -m deb" shape="box"];
  "sha256:6912763153c00113b6223006aa820cab80b3c5b4b68c105c84128dbee5700ed0" [label="/bin/sh -c echo >> /etc/sudoers" shape="box"];
  "sha256:5faa1e5b6eb623284d869da9b2ecbf7a641b6be35c2569209047086c444680db" [label="/bin/sh -c echo \"deb ALL=(ALL) NOPASSWD:ALL\" >> /etc/sudoers" shape="box"];
  "sha256:4cbb813b029e3057d672c5ca7f4486eca94175bcdafbd27ac8b32b804be6005d" [label="mkdir{path=/home/deb}" shape="note"];
  "sha256:e92fb274a1564da664093eb510108a95be8e843492bdaa17697a0fb4642112b9" [label="sha256:e92fb274a1564da664093eb510108a95be8e843492bdaa17697a0fb4642112b9" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:b854c5ba23e2728d34b4da3a5fdb67ababab4d9458bcc15c4e2acb1a00eb80bb" [label=""];
  "sha256:b854c5ba23e2728d34b4da3a5fdb67ababab4d9458bcc15c4e2acb1a00eb80bb" -> "sha256:0ef71920194545b51a5dfe2707171fd1d19861668d20fa39affe031279b5b06e" [label=""];
  "sha256:0ef71920194545b51a5dfe2707171fd1d19861668d20fa39affe031279b5b06e" -> "sha256:28b9a9f402708d0272f6c4c07ca481de4fe507d97848fc568b38b53ba0770faa" [label=""];
  "sha256:28b9a9f402708d0272f6c4c07ca481de4fe507d97848fc568b38b53ba0770faa" -> "sha256:6912763153c00113b6223006aa820cab80b3c5b4b68c105c84128dbee5700ed0" [label=""];
  "sha256:6912763153c00113b6223006aa820cab80b3c5b4b68c105c84128dbee5700ed0" -> "sha256:5faa1e5b6eb623284d869da9b2ecbf7a641b6be35c2569209047086c444680db" [label=""];
  "sha256:5faa1e5b6eb623284d869da9b2ecbf7a641b6be35c2569209047086c444680db" -> "sha256:4cbb813b029e3057d672c5ca7f4486eca94175bcdafbd27ac8b32b804be6005d" [label=""];
  "sha256:4cbb813b029e3057d672c5ca7f4486eca94175bcdafbd27ac8b32b804be6005d" -> "sha256:e92fb274a1564da664093eb510108a95be8e843492bdaa17697a0fb4642112b9" [label=""];
}

