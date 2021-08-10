[app/sources/129576635.Dockerfile]
digraph {
  "sha256:73db848610cffd4b515829409349f06097816ac504481de54dddafdf067567f1" [label="local://context" shape="ellipse"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:85e8d8a30577623288ac5217a2dfd5646225c75c208ce4022f80358903846f07" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:b071d9edbc2874ed3ea4b06a2ec254eb040f6fb9289f42cb1851e000486cfeb2" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:78d3ed09c07c5a0076a5c79978589f5a9a4a2a775b8a5fbc56ccbd03d0685deb" [label="copy{src=/setup.py, dest=/usr/src/app/}" shape="note"];
  "sha256:265d20244f51673eb3ec6b3095c8f7f57120b59b42bfc10ef37ae78570c10175" [label="/bin/sh -c pip install -e .[ods,xlsx,xls]" shape="box"];
  "sha256:f3daee396cc71a8820fe82927563ced2af346c09b0bfe2e543bc96f9ba53a777" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:04bc2a29c549421fa275cb6b3911c3f574ec2abcc38f8886be7316716cf581ce" [label="sha256:04bc2a29c549421fa275cb6b3911c3f574ec2abcc38f8886be7316716cf581ce" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:85e8d8a30577623288ac5217a2dfd5646225c75c208ce4022f80358903846f07" [label=""];
  "sha256:85e8d8a30577623288ac5217a2dfd5646225c75c208ce4022f80358903846f07" -> "sha256:b071d9edbc2874ed3ea4b06a2ec254eb040f6fb9289f42cb1851e000486cfeb2" [label=""];
  "sha256:b071d9edbc2874ed3ea4b06a2ec254eb040f6fb9289f42cb1851e000486cfeb2" -> "sha256:78d3ed09c07c5a0076a5c79978589f5a9a4a2a775b8a5fbc56ccbd03d0685deb" [label=""];
  "sha256:73db848610cffd4b515829409349f06097816ac504481de54dddafdf067567f1" -> "sha256:78d3ed09c07c5a0076a5c79978589f5a9a4a2a775b8a5fbc56ccbd03d0685deb" [label=""];
  "sha256:78d3ed09c07c5a0076a5c79978589f5a9a4a2a775b8a5fbc56ccbd03d0685deb" -> "sha256:265d20244f51673eb3ec6b3095c8f7f57120b59b42bfc10ef37ae78570c10175" [label=""];
  "sha256:265d20244f51673eb3ec6b3095c8f7f57120b59b42bfc10ef37ae78570c10175" -> "sha256:f3daee396cc71a8820fe82927563ced2af346c09b0bfe2e543bc96f9ba53a777" [label=""];
  "sha256:73db848610cffd4b515829409349f06097816ac504481de54dddafdf067567f1" -> "sha256:f3daee396cc71a8820fe82927563ced2af346c09b0bfe2e543bc96f9ba53a777" [label=""];
  "sha256:f3daee396cc71a8820fe82927563ced2af346c09b0bfe2e543bc96f9ba53a777" -> "sha256:04bc2a29c549421fa275cb6b3911c3f574ec2abcc38f8886be7316716cf581ce" [label=""];
}

