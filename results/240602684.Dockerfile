[app/sources/240602684.Dockerfile]
digraph {
  "sha256:154db80c97a8e9146ac2652e6ab56c3b72b797a48c9dd5c9b926d54d00318ea7" [label="docker-image://docker.io/library/voltha-base:latest" shape="ellipse"];
  "sha256:87c7d0df18156c270c4cf1565bcf427d790444360c16a8eab4a0ce808299ec2f" [label="/bin/sh -c mkdir /shovel && touch /shovel/__init__.py" shape="box"];
  "sha256:659f718f48734a68918b1f57f49073d27b54116031a27a993ed7f06c693ef0b2" [label="local://context" shape="ellipse"];
  "sha256:f9f26e2bf718b731e0b125af5f93106cacd2ce8bbe0ff1d6d575008482a64abb" [label="copy{src=/common, dest=/shovel/common}" shape="note"];
  "sha256:ea800e176fc3f5c3fa6a12fc2470293773fea93181f18726076e4bf021641290" [label="copy{src=/shovel, dest=/shovel/shovel}" shape="note"];
  "sha256:66ce55a441c71a0a0553d1ad3fe4eea213637fe66375bea527d992a5ec8ec6ca" [label="sha256:66ce55a441c71a0a0553d1ad3fe4eea213637fe66375bea527d992a5ec8ec6ca" shape="plaintext"];
  "sha256:154db80c97a8e9146ac2652e6ab56c3b72b797a48c9dd5c9b926d54d00318ea7" -> "sha256:87c7d0df18156c270c4cf1565bcf427d790444360c16a8eab4a0ce808299ec2f" [label=""];
  "sha256:87c7d0df18156c270c4cf1565bcf427d790444360c16a8eab4a0ce808299ec2f" -> "sha256:f9f26e2bf718b731e0b125af5f93106cacd2ce8bbe0ff1d6d575008482a64abb" [label=""];
  "sha256:659f718f48734a68918b1f57f49073d27b54116031a27a993ed7f06c693ef0b2" -> "sha256:f9f26e2bf718b731e0b125af5f93106cacd2ce8bbe0ff1d6d575008482a64abb" [label=""];
  "sha256:f9f26e2bf718b731e0b125af5f93106cacd2ce8bbe0ff1d6d575008482a64abb" -> "sha256:ea800e176fc3f5c3fa6a12fc2470293773fea93181f18726076e4bf021641290" [label=""];
  "sha256:659f718f48734a68918b1f57f49073d27b54116031a27a993ed7f06c693ef0b2" -> "sha256:ea800e176fc3f5c3fa6a12fc2470293773fea93181f18726076e4bf021641290" [label=""];
  "sha256:ea800e176fc3f5c3fa6a12fc2470293773fea93181f18726076e4bf021641290" -> "sha256:66ce55a441c71a0a0553d1ad3fe4eea213637fe66375bea527d992a5ec8ec6ca" [label=""];
}

