[app/sources/392360397.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:abbb8e940512a02caa322f43c6e051eba77cc5e1c67d1351bd730991678b6c80" [label="/bin/sh -c apt-get update && apt-get install -y --force-yes g++ cmake libboost-dev python-dev libglib2.0-dev libpixman-1-dev liblua5.2-dev swig libcap-dev git vim libattr1-dev wget && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a5ce080392c69a488796a23f573b7ed287b7a4d10f537b06a3443b4eff42d55e" [label="/bin/sh -c mkdir -p /usr/src/systemc-2.3.0a" shape="box"];
  "sha256:c2983e4d5737b82ab5e44ced354e36a9b0520a531864c33cb077478e57894807" [label="mkdir{path=/usr/src/systemc-2.3.0a}" shape="note"];
  "sha256:6869e802bd4618d7756cb4d74f84e4d6f1a459f6c3131cd2e5f07ded8a9c6e9a" [label="/bin/sh -c wget -O systemc-2.3.0a.tar.gz http://www.accellera.org/images/downloads/standards/systemc/systemc-2.3.0a.tar.gz && tar xzvf systemc-2.3.0a.tar.gz" shape="box"];
  "sha256:e440f6987483bbeda9affb4b4ad7de6cb1b25576aac580683861b075d48ff244" [label="/bin/sh -c cd /usr/src/systemc-2.3.0a/systemc-2.3.0a && ls && mkdir -p /usr/local/systemc-2.3.0/ && mkdir objdir && cd objdir && ../configure --prefix=/usr/local/systemc-2.3.0 && make  && make install" shape="box"];
  "sha256:0624e763025c4bc38bd94242b3eaaf3cac687463e3ee95a4562f630d092b8f61" [label="/bin/sh -c mkdir -p /usr/local/vp-build" shape="box"];
  "sha256:47eb9fcd5c2d9979a3e9aef0102a84c1f8f407b8fb70764be85c5cb32ddb042f" [label="local://context" shape="ellipse"];
  "sha256:0bbee8ad2dd818b89c7ae0b0af1028d806dcf7577ae8794e72ee9a4d8e46d470" [label="copy{src=/vp-build, dest=/usr/local/vp-build}" shape="note"];
  "sha256:8c6f0787232a06f4b56046e0d6770e5f1e8845b200c041c71b088df98ab8f827" [label="mkdir{path=/usr/local/vp-build}" shape="note"];
  "sha256:fcfd154853221ae9874afd93f4bfe2f303aa59ab68bbece92651c5a4297ad282" [label="sha256:fcfd154853221ae9874afd93f4bfe2f303aa59ab68bbece92651c5a4297ad282" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:abbb8e940512a02caa322f43c6e051eba77cc5e1c67d1351bd730991678b6c80" [label=""];
  "sha256:abbb8e940512a02caa322f43c6e051eba77cc5e1c67d1351bd730991678b6c80" -> "sha256:a5ce080392c69a488796a23f573b7ed287b7a4d10f537b06a3443b4eff42d55e" [label=""];
  "sha256:a5ce080392c69a488796a23f573b7ed287b7a4d10f537b06a3443b4eff42d55e" -> "sha256:c2983e4d5737b82ab5e44ced354e36a9b0520a531864c33cb077478e57894807" [label=""];
  "sha256:c2983e4d5737b82ab5e44ced354e36a9b0520a531864c33cb077478e57894807" -> "sha256:6869e802bd4618d7756cb4d74f84e4d6f1a459f6c3131cd2e5f07ded8a9c6e9a" [label=""];
  "sha256:6869e802bd4618d7756cb4d74f84e4d6f1a459f6c3131cd2e5f07ded8a9c6e9a" -> "sha256:e440f6987483bbeda9affb4b4ad7de6cb1b25576aac580683861b075d48ff244" [label=""];
  "sha256:e440f6987483bbeda9affb4b4ad7de6cb1b25576aac580683861b075d48ff244" -> "sha256:0624e763025c4bc38bd94242b3eaaf3cac687463e3ee95a4562f630d092b8f61" [label=""];
  "sha256:0624e763025c4bc38bd94242b3eaaf3cac687463e3ee95a4562f630d092b8f61" -> "sha256:0bbee8ad2dd818b89c7ae0b0af1028d806dcf7577ae8794e72ee9a4d8e46d470" [label=""];
  "sha256:47eb9fcd5c2d9979a3e9aef0102a84c1f8f407b8fb70764be85c5cb32ddb042f" -> "sha256:0bbee8ad2dd818b89c7ae0b0af1028d806dcf7577ae8794e72ee9a4d8e46d470" [label=""];
  "sha256:0bbee8ad2dd818b89c7ae0b0af1028d806dcf7577ae8794e72ee9a4d8e46d470" -> "sha256:8c6f0787232a06f4b56046e0d6770e5f1e8845b200c041c71b088df98ab8f827" [label=""];
  "sha256:8c6f0787232a06f4b56046e0d6770e5f1e8845b200c041c71b088df98ab8f827" -> "sha256:fcfd154853221ae9874afd93f4bfe2f303aa59ab68bbece92651c5a4297ad282" [label=""];
}

