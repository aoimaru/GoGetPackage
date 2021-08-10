[app/sources/351581203.Dockerfile]
digraph {
  "sha256:c13167534a2df291faff1ef5cfba8dd35dd4879fd1bc901a8fa5959667af4a45" [label="docker-image://docker.io/library/wordpress:latest" shape="ellipse"];
  "sha256:92e01a8b2122b9d7d3cac7ac9cb8ce95d522bfd9ac488f810044722e280add5d" [label="/bin/sh -c apt-get update && apt-get install -y sudo less mysql-client" shape="box"];
  "sha256:5071ebda46839bedd7f095484c81ce061d33c9fa3758323918a5b87b312c4202" [label="/bin/sh -c curl -o /bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar" shape="box"];
  "sha256:0d7bc0d379225d31bae6ed48c6a5a8ca32bc10bd1e8ce4e60e28fd8ace63bdae" [label="local://context" shape="ellipse"];
  "sha256:bcc9d5d43be257b646e59eb818ff2c0dd095922b099b7351df6bb7482b2bc8eb" [label="copy{src=/wp-su.sh, dest=/bin/wp}" shape="note"];
  "sha256:367af28cb7c3b009626df2828c9a2f0aaeaace9b7e498ae6fe39e9ab6409e73d" [label="/bin/sh -c chmod +x /bin/wp-cli.phar /bin/wp" shape="box"];
  "sha256:a7c5186b73f43730636fcc41fd972e2015610d006f67183df7cdf1e63bd47094" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:b34c9b573cee1e01a3c0924afe63fde3cea4cb9eb8a2f3afd3d8aa8bf167e6f6" [label="/bin/sh -c rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:eb21f7920b69a56ea9742a36e2af8757732b216000a74efeb5d9c432d9028283" [label="sha256:eb21f7920b69a56ea9742a36e2af8757732b216000a74efeb5d9c432d9028283" shape="plaintext"];
  "sha256:c13167534a2df291faff1ef5cfba8dd35dd4879fd1bc901a8fa5959667af4a45" -> "sha256:92e01a8b2122b9d7d3cac7ac9cb8ce95d522bfd9ac488f810044722e280add5d" [label=""];
  "sha256:92e01a8b2122b9d7d3cac7ac9cb8ce95d522bfd9ac488f810044722e280add5d" -> "sha256:5071ebda46839bedd7f095484c81ce061d33c9fa3758323918a5b87b312c4202" [label=""];
  "sha256:5071ebda46839bedd7f095484c81ce061d33c9fa3758323918a5b87b312c4202" -> "sha256:bcc9d5d43be257b646e59eb818ff2c0dd095922b099b7351df6bb7482b2bc8eb" [label=""];
  "sha256:0d7bc0d379225d31bae6ed48c6a5a8ca32bc10bd1e8ce4e60e28fd8ace63bdae" -> "sha256:bcc9d5d43be257b646e59eb818ff2c0dd095922b099b7351df6bb7482b2bc8eb" [label=""];
  "sha256:bcc9d5d43be257b646e59eb818ff2c0dd095922b099b7351df6bb7482b2bc8eb" -> "sha256:367af28cb7c3b009626df2828c9a2f0aaeaace9b7e498ae6fe39e9ab6409e73d" [label=""];
  "sha256:367af28cb7c3b009626df2828c9a2f0aaeaace9b7e498ae6fe39e9ab6409e73d" -> "sha256:a7c5186b73f43730636fcc41fd972e2015610d006f67183df7cdf1e63bd47094" [label=""];
  "sha256:a7c5186b73f43730636fcc41fd972e2015610d006f67183df7cdf1e63bd47094" -> "sha256:b34c9b573cee1e01a3c0924afe63fde3cea4cb9eb8a2f3afd3d8aa8bf167e6f6" [label=""];
  "sha256:b34c9b573cee1e01a3c0924afe63fde3cea4cb9eb8a2f3afd3d8aa8bf167e6f6" -> "sha256:eb21f7920b69a56ea9742a36e2af8757732b216000a74efeb5d9c432d9028283" [label=""];
}

