[app/sources/214759640.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:68543fdc5097e42ab40b61514d49dbdb33b38a18e1b7e154d93e1c113596d74b" [label="mkdir{path=/opt/s3wipe}" shape="note"];
  "sha256:1c45d7d76195b9d60939add8a11da70448d3af7933a66af042540d42468faed7" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:6b5bab7dc6ce7b7db05d1cf62599e615ed1324f831bc3cae884a69078464882e" [label="/bin/sh -c apt-get -y install python-boto" shape="box"];
  "sha256:495601d641fde92588bd74ff182abb67d0a65a3aacba98d384743b46f421946e" [label="local://context" shape="ellipse"];
  "sha256:6120769048befa06e8b1a3be21cf33502335faa3caf8f782f4f525a0953991d5" [label="copy{src=/, dest=/opt/s3wipe/}" shape="note"];
  "sha256:ac315f4a5b5add85230862b51d6617b4a0c3e0584e411bab1044d954b3710ace" [label="/bin/sh -c chmod 755 s3wipe" shape="box"];
  "sha256:7e74ac6e5a0c8bdbaf85a3d271b1f88a2e9604855941ea4e5d3a62f78a8d4a90" [label="sha256:7e74ac6e5a0c8bdbaf85a3d271b1f88a2e9604855941ea4e5d3a62f78a8d4a90" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:68543fdc5097e42ab40b61514d49dbdb33b38a18e1b7e154d93e1c113596d74b" [label=""];
  "sha256:68543fdc5097e42ab40b61514d49dbdb33b38a18e1b7e154d93e1c113596d74b" -> "sha256:1c45d7d76195b9d60939add8a11da70448d3af7933a66af042540d42468faed7" [label=""];
  "sha256:1c45d7d76195b9d60939add8a11da70448d3af7933a66af042540d42468faed7" -> "sha256:6b5bab7dc6ce7b7db05d1cf62599e615ed1324f831bc3cae884a69078464882e" [label=""];
  "sha256:6b5bab7dc6ce7b7db05d1cf62599e615ed1324f831bc3cae884a69078464882e" -> "sha256:6120769048befa06e8b1a3be21cf33502335faa3caf8f782f4f525a0953991d5" [label=""];
  "sha256:495601d641fde92588bd74ff182abb67d0a65a3aacba98d384743b46f421946e" -> "sha256:6120769048befa06e8b1a3be21cf33502335faa3caf8f782f4f525a0953991d5" [label=""];
  "sha256:6120769048befa06e8b1a3be21cf33502335faa3caf8f782f4f525a0953991d5" -> "sha256:ac315f4a5b5add85230862b51d6617b4a0c3e0584e411bab1044d954b3710ace" [label=""];
  "sha256:ac315f4a5b5add85230862b51d6617b4a0c3e0584e411bab1044d954b3710ace" -> "sha256:7e74ac6e5a0c8bdbaf85a3d271b1f88a2e9604855941ea4e5d3a62f78a8d4a90" [label=""];
}

