[app/sources/214870383.Dockerfile]
digraph {
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" [label="docker-image://docker.io/phusion/baseimage:latest" shape="ellipse"];
  "sha256:de8933f220c6d8461a749ba599d906fea12d5d25cacbd8ca9753b7d0e01a220d" [label="/bin/sh -c apt-get update && apt-get install -y   python   python-dev   libffi-dev   libssl-dev   python-pip" shape="box"];
  "sha256:52f6de9046ff22f1cb4f6998a87aac2b5296a944f6481584ef31b9ae956397f6" [label="local://context" shape="ellipse"];
  "sha256:c2ceabdb95ded4a02660f3db36a9dcf4f4aa59c11d47e347ae6744eb6c7de48b" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:3eacb9411d3cd2716e9edbe0325f6cfd5aac46908201d937c3dcfd320aa85ab1" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:cd6828d99fad23dcedd278d0d67e7f7c1222d6e75423348853a9ed9382a1fd0b" [label="copy{src=/docker-pipeline, dest=/docker-pipeline}" shape="note"];
  "sha256:607c9890a052d0045a0a8c815c4fe95f8413c8ce9480486151c86e20118f8022" [label="mkdir{path=/docker-pipeline}" shape="note"];
  "sha256:9b003811cf405ce488c0dba581f731349a664c5b9f5231031c6bedfbeb2a37e4" [label="sha256:9b003811cf405ce488c0dba581f731349a664c5b9f5231031c6bedfbeb2a37e4" shape="plaintext"];
  "sha256:5afce64046e3aeb1081f217f2d57ec60e23a02e047881568eddb5209e9a729ff" -> "sha256:de8933f220c6d8461a749ba599d906fea12d5d25cacbd8ca9753b7d0e01a220d" [label=""];
  "sha256:de8933f220c6d8461a749ba599d906fea12d5d25cacbd8ca9753b7d0e01a220d" -> "sha256:c2ceabdb95ded4a02660f3db36a9dcf4f4aa59c11d47e347ae6744eb6c7de48b" [label=""];
  "sha256:52f6de9046ff22f1cb4f6998a87aac2b5296a944f6481584ef31b9ae956397f6" -> "sha256:c2ceabdb95ded4a02660f3db36a9dcf4f4aa59c11d47e347ae6744eb6c7de48b" [label=""];
  "sha256:c2ceabdb95ded4a02660f3db36a9dcf4f4aa59c11d47e347ae6744eb6c7de48b" -> "sha256:3eacb9411d3cd2716e9edbe0325f6cfd5aac46908201d937c3dcfd320aa85ab1" [label=""];
  "sha256:3eacb9411d3cd2716e9edbe0325f6cfd5aac46908201d937c3dcfd320aa85ab1" -> "sha256:cd6828d99fad23dcedd278d0d67e7f7c1222d6e75423348853a9ed9382a1fd0b" [label=""];
  "sha256:52f6de9046ff22f1cb4f6998a87aac2b5296a944f6481584ef31b9ae956397f6" -> "sha256:cd6828d99fad23dcedd278d0d67e7f7c1222d6e75423348853a9ed9382a1fd0b" [label=""];
  "sha256:cd6828d99fad23dcedd278d0d67e7f7c1222d6e75423348853a9ed9382a1fd0b" -> "sha256:607c9890a052d0045a0a8c815c4fe95f8413c8ce9480486151c86e20118f8022" [label=""];
  "sha256:607c9890a052d0045a0a8c815c4fe95f8413c8ce9480486151c86e20118f8022" -> "sha256:9b003811cf405ce488c0dba581f731349a664c5b9f5231031c6bedfbeb2a37e4" [label=""];
}

