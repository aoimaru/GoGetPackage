[app/sources/483733279.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:78acab553ca23b1248d98940016f8c518a25d8a76033764fe2eb41ce349ae519" [label="/bin/sh -c yum -y update && yum clean all" shape="box"];
  "sha256:fe4f93e36763a10b4bbcdec6887ff57315bdadd66f900b5c082ada5dcc70816c" [label="/bin/sh -c yum -y install python-pip && yum clean all" shape="box"];
  "sha256:e461aac54cceaa786ceb85230b620c3a16604b1fc6c0ed9743f74d12cdbf59e3" [label="local://context" shape="ellipse"];
  "sha256:a913808b193f340dc1205f8307258e9cfb938e74db11965c3f2b32c02e3820d3" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:c66b08268dcbbb91aeabd5d6fc6f68e30a07916668b412c702ee23f149fc9ea4" [label="/bin/sh -c cd /src; pip install -r requirements.txt" shape="box"];
  "sha256:2a7389d73ff99b80879e80493a74283d6440e54e2ff969e42f036ec88b1420d1" [label="sha256:2a7389d73ff99b80879e80493a74283d6440e54e2ff969e42f036ec88b1420d1" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:78acab553ca23b1248d98940016f8c518a25d8a76033764fe2eb41ce349ae519" [label=""];
  "sha256:78acab553ca23b1248d98940016f8c518a25d8a76033764fe2eb41ce349ae519" -> "sha256:fe4f93e36763a10b4bbcdec6887ff57315bdadd66f900b5c082ada5dcc70816c" [label=""];
  "sha256:fe4f93e36763a10b4bbcdec6887ff57315bdadd66f900b5c082ada5dcc70816c" -> "sha256:a913808b193f340dc1205f8307258e9cfb938e74db11965c3f2b32c02e3820d3" [label=""];
  "sha256:e461aac54cceaa786ceb85230b620c3a16604b1fc6c0ed9743f74d12cdbf59e3" -> "sha256:a913808b193f340dc1205f8307258e9cfb938e74db11965c3f2b32c02e3820d3" [label=""];
  "sha256:a913808b193f340dc1205f8307258e9cfb938e74db11965c3f2b32c02e3820d3" -> "sha256:c66b08268dcbbb91aeabd5d6fc6f68e30a07916668b412c702ee23f149fc9ea4" [label=""];
  "sha256:c66b08268dcbbb91aeabd5d6fc6f68e30a07916668b412c702ee23f149fc9ea4" -> "sha256:2a7389d73ff99b80879e80493a74283d6440e54e2ff969e42f036ec88b1420d1" [label=""];
}

