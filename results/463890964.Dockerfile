[app/sources/463890964.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:e6355203c784b39f20a6905fa96e76e29e88d5c668acc6d9ca28420f88a13a01" [label="/bin/sh -c apt-get update && apt-get install -y zlib1g-dev   pkg-config   libfreetype6-dev   libpng-dev   wget   g++   make   perl   python   python-setuptools   python-matplotlib   python-pip   locales &&   locale-gen en_US.UTF-8 &&   apt-get clean && apt-get autoclean" shape="box"];
  "sha256:f08be10005d61e661dcf16bc34935e70dfff54c766967d27bcc09211fd00f7ed" [label="/bin/sh -c python -m pip install -U pip" shape="box"];
  "sha256:9f6b1a943061106386b65bbd7d9332bb5112ca559c619e982d1424e1c8859c02" [label="/bin/sh -c wget https://downloads.sourceforge.net/project/quast/quast-5.0.0.tar.gz &&     tar -xzf quast-5.0.0.tar.gz &&     rm -r quast-5.0.0.tar.gz" shape="box"];
  "sha256:958bddc4df43e2cc325b356225bb73ff38c8ed447e35cb27fc88b2d83240a691" [label="/bin/sh -c cd /quast-5.0.0 &&     /quast-5.0.0/setup.py install" shape="box"];
  "sha256:fdcaf0ad5eaab0e8bf781234abc3589d0f77f622331345b09140de953e8c4870" [label="/bin/sh -c cd /quast-5.0.0 &&     /quast-5.0.0/setup.py test &&     mkdir /data" shape="box"];
  "sha256:3a762753f32600f1e6b89a4c05a19227ade2584487bf29d3fa92fecbc10cf78a" [label="mkdir{path=/data}" shape="note"];
  "sha256:ae3549d12548763a2682039fa4b8c27473a4b0815ec4b022f46ff5963525663c" [label="sha256:ae3549d12548763a2682039fa4b8c27473a4b0815ec4b022f46ff5963525663c" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:e6355203c784b39f20a6905fa96e76e29e88d5c668acc6d9ca28420f88a13a01" [label=""];
  "sha256:e6355203c784b39f20a6905fa96e76e29e88d5c668acc6d9ca28420f88a13a01" -> "sha256:f08be10005d61e661dcf16bc34935e70dfff54c766967d27bcc09211fd00f7ed" [label=""];
  "sha256:f08be10005d61e661dcf16bc34935e70dfff54c766967d27bcc09211fd00f7ed" -> "sha256:9f6b1a943061106386b65bbd7d9332bb5112ca559c619e982d1424e1c8859c02" [label=""];
  "sha256:9f6b1a943061106386b65bbd7d9332bb5112ca559c619e982d1424e1c8859c02" -> "sha256:958bddc4df43e2cc325b356225bb73ff38c8ed447e35cb27fc88b2d83240a691" [label=""];
  "sha256:958bddc4df43e2cc325b356225bb73ff38c8ed447e35cb27fc88b2d83240a691" -> "sha256:fdcaf0ad5eaab0e8bf781234abc3589d0f77f622331345b09140de953e8c4870" [label=""];
  "sha256:fdcaf0ad5eaab0e8bf781234abc3589d0f77f622331345b09140de953e8c4870" -> "sha256:3a762753f32600f1e6b89a4c05a19227ade2584487bf29d3fa92fecbc10cf78a" [label=""];
  "sha256:3a762753f32600f1e6b89a4c05a19227ade2584487bf29d3fa92fecbc10cf78a" -> "sha256:ae3549d12548763a2682039fa4b8c27473a4b0815ec4b022f46ff5963525663c" [label=""];
}

