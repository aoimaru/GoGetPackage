[app/sources/197865839.Dockerfile]
digraph {
  "sha256:f49c328244b0fa338a52775edd1b971bdaaf1754d2554dcf2f47af5a1755fc42" [label="docker-image://docker.io/library/node:4.2.4-wheezy" shape="ellipse"];
  "sha256:520a8b0914447a613ee864d8dc71aee427ea82dd3f4b847c61160c6f22417ce3" [label="/bin/sh -c npm install juttle-engine -g" shape="box"];
  "sha256:2f028a4add891e54f82bf6945118734b4795be554bba28e97d7e3df3bf49d561" [label="/bin/sh -c mkdir -p /opt/juttle-engine" shape="box"];
  "sha256:71a278f4f940619c920b5bc919405fcbb9ea8a544e44f764ccec020d2072b861" [label="mkdir{path=/opt/juttle-engine}" shape="note"];
  "sha256:ddd6c78a9e89488b768b29f749c91d6a679e42bd836000bbce57c91674500d43" [label="/bin/sh -c mkdir -p /opt/juttle-engine/juttles/examples" shape="box"];
  "sha256:93648d6ff49627971e239267388790f07e5db999142afc3b319b8051c5eb33e5" [label="local://context" shape="ellipse"];
  "sha256:86fd7a1ac2c35f87d6d79ca2f23edd1f48d080a43e5476773b1dad20236ade61" [label="copy{src=/example-docker-files, dest=/opt/juttle-engine/juttles/examples/}" shape="note"];
  "sha256:82e566730c5fd54b49a137fbb7e59d802af0478ce61492319a8f1b1d80b8fa34" [label="sha256:82e566730c5fd54b49a137fbb7e59d802af0478ce61492319a8f1b1d80b8fa34" shape="plaintext"];
  "sha256:f49c328244b0fa338a52775edd1b971bdaaf1754d2554dcf2f47af5a1755fc42" -> "sha256:520a8b0914447a613ee864d8dc71aee427ea82dd3f4b847c61160c6f22417ce3" [label=""];
  "sha256:520a8b0914447a613ee864d8dc71aee427ea82dd3f4b847c61160c6f22417ce3" -> "sha256:2f028a4add891e54f82bf6945118734b4795be554bba28e97d7e3df3bf49d561" [label=""];
  "sha256:2f028a4add891e54f82bf6945118734b4795be554bba28e97d7e3df3bf49d561" -> "sha256:71a278f4f940619c920b5bc919405fcbb9ea8a544e44f764ccec020d2072b861" [label=""];
  "sha256:71a278f4f940619c920b5bc919405fcbb9ea8a544e44f764ccec020d2072b861" -> "sha256:ddd6c78a9e89488b768b29f749c91d6a679e42bd836000bbce57c91674500d43" [label=""];
  "sha256:ddd6c78a9e89488b768b29f749c91d6a679e42bd836000bbce57c91674500d43" -> "sha256:86fd7a1ac2c35f87d6d79ca2f23edd1f48d080a43e5476773b1dad20236ade61" [label=""];
  "sha256:93648d6ff49627971e239267388790f07e5db999142afc3b319b8051c5eb33e5" -> "sha256:86fd7a1ac2c35f87d6d79ca2f23edd1f48d080a43e5476773b1dad20236ade61" [label=""];
  "sha256:86fd7a1ac2c35f87d6d79ca2f23edd1f48d080a43e5476773b1dad20236ade61" -> "sha256:82e566730c5fd54b49a137fbb7e59d802af0478ce61492319a8f1b1d80b8fa34" [label=""];
}

