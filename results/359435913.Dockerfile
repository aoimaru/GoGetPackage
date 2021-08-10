[app/sources/359435913.Dockerfile]
digraph {
  "sha256:7ce5b507f3dcda6d3fd075a24eec3b26da918e5a65c94e3c68f9764f08a8c110" [label="docker-image://docker.io/library/python:3.5-alpine" shape="ellipse"];
  "sha256:471ecae0b1acfff02478c3a3b0e08141d685dbaeec7507c20a942da57869c0cb" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:97cbb557be460d8a6b4ab18d7ae7c6181046e4b180f10387d5260ccf91c33298" [label="local://context" shape="ellipse"];
  "sha256:7db4efd58dc0716feba6d9b1988fe5d072e11268baf1ef80333ee4f8bcee14b7" [label="copy{src=/requirements.txt, dest=/usr/src/app/}" shape="note"];
  "sha256:94deb06fb0ed278c478842ca2cb81ff66c1b37498c70ac3b6d924c1dbd68c007" [label="/bin/sh -c apk update" shape="box"];
  "sha256:ebf07685a8f4d91ba66d5e57dc0460c6b2cf6c110da97f55dbe608462a479307" [label="/bin/sh -c apk add linux-headers g++" shape="box"];
  "sha256:7f2c662810a81e6bbead7468b9a31125bcfef97013d2e82fcd2244785c09fdcc" [label="/bin/sh -c pip3 install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:7975245324d3b36f33f279017ba7feafbd4f947b58e638e748cb6bca98398132" [label="/bin/sh -c pip3 install gunicorn" shape="box"];
  "sha256:be41d404362060e0a156eb423fe7a57c3ed8fa97573a8a643d23bc93e42e833b" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:4cb98c6496d6b79119a3705ffe3bbb7fd48898e4906dbed9ce83e5701c6f430d" [label="sha256:4cb98c6496d6b79119a3705ffe3bbb7fd48898e4906dbed9ce83e5701c6f430d" shape="plaintext"];
  "sha256:7ce5b507f3dcda6d3fd075a24eec3b26da918e5a65c94e3c68f9764f08a8c110" -> "sha256:471ecae0b1acfff02478c3a3b0e08141d685dbaeec7507c20a942da57869c0cb" [label=""];
  "sha256:471ecae0b1acfff02478c3a3b0e08141d685dbaeec7507c20a942da57869c0cb" -> "sha256:7db4efd58dc0716feba6d9b1988fe5d072e11268baf1ef80333ee4f8bcee14b7" [label=""];
  "sha256:97cbb557be460d8a6b4ab18d7ae7c6181046e4b180f10387d5260ccf91c33298" -> "sha256:7db4efd58dc0716feba6d9b1988fe5d072e11268baf1ef80333ee4f8bcee14b7" [label=""];
  "sha256:7db4efd58dc0716feba6d9b1988fe5d072e11268baf1ef80333ee4f8bcee14b7" -> "sha256:94deb06fb0ed278c478842ca2cb81ff66c1b37498c70ac3b6d924c1dbd68c007" [label=""];
  "sha256:94deb06fb0ed278c478842ca2cb81ff66c1b37498c70ac3b6d924c1dbd68c007" -> "sha256:ebf07685a8f4d91ba66d5e57dc0460c6b2cf6c110da97f55dbe608462a479307" [label=""];
  "sha256:ebf07685a8f4d91ba66d5e57dc0460c6b2cf6c110da97f55dbe608462a479307" -> "sha256:7f2c662810a81e6bbead7468b9a31125bcfef97013d2e82fcd2244785c09fdcc" [label=""];
  "sha256:7f2c662810a81e6bbead7468b9a31125bcfef97013d2e82fcd2244785c09fdcc" -> "sha256:7975245324d3b36f33f279017ba7feafbd4f947b58e638e748cb6bca98398132" [label=""];
  "sha256:7975245324d3b36f33f279017ba7feafbd4f947b58e638e748cb6bca98398132" -> "sha256:be41d404362060e0a156eb423fe7a57c3ed8fa97573a8a643d23bc93e42e833b" [label=""];
  "sha256:97cbb557be460d8a6b4ab18d7ae7c6181046e4b180f10387d5260ccf91c33298" -> "sha256:be41d404362060e0a156eb423fe7a57c3ed8fa97573a8a643d23bc93e42e833b" [label=""];
  "sha256:be41d404362060e0a156eb423fe7a57c3ed8fa97573a8a643d23bc93e42e833b" -> "sha256:4cb98c6496d6b79119a3705ffe3bbb7fd48898e4906dbed9ce83e5701c6f430d" [label=""];
}

