[app/sources/347806743.Dockerfile]
digraph {
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" [label="docker-image://docker.io/library/python:3.6-alpine" shape="ellipse"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:3afca8663b9fd16ed1ae3c35e2f9bcc966764ac8df56ceb27ad14ea6eed28ab6" [label="/bin/sh -c pip install pipenv" shape="box"];
  "sha256:0c38d88f734d94e8297c42cb832a451ed982aa8f993067c452b4af0c3dd10ecf" [label="local://context" shape="ellipse"];
  "sha256:9c289e9621e7b2ca6e14f84b3c8ca0ff2cda3379a4c1082fc569246af69fc3ce" [label="copy{src=/Pipfile, dest=/},copy{src=/Pipfile.lock, dest=/},copy{src=/setup.py, dest=/}" shape="note"];
  "sha256:c875113068467f946208f262e26e2051192b99d62a2fa93f10900f8e89fd0119" [label="/bin/sh -c pipenv install --system --deploy" shape="box"];
  "sha256:0b7947512e740792b1441c13a6848a328f3a2571980dbd0f921cdc2e8bf1d552" [label="copy{src=/usr/local/lib/python3.6/site-packages, dest=/usr/local/lib/python3.6/site-packages}" shape="note"];
  "sha256:602ac9b167b7585d06b3ae21fba71e2daa5effcc2fbc03b3011d9980ebe5203d" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:31c1380f1dc758a2f7954a2b6130025a9cd1e75f2a323a14cc4ec048e277c7c8" [label="sha256:31c1380f1dc758a2f7954a2b6130025a9cd1e75f2a323a14cc4ec048e277c7c8" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:3afca8663b9fd16ed1ae3c35e2f9bcc966764ac8df56ceb27ad14ea6eed28ab6" [label=""];
  "sha256:3afca8663b9fd16ed1ae3c35e2f9bcc966764ac8df56ceb27ad14ea6eed28ab6" -> "sha256:9c289e9621e7b2ca6e14f84b3c8ca0ff2cda3379a4c1082fc569246af69fc3ce" [label=""];
  "sha256:0c38d88f734d94e8297c42cb832a451ed982aa8f993067c452b4af0c3dd10ecf" -> "sha256:9c289e9621e7b2ca6e14f84b3c8ca0ff2cda3379a4c1082fc569246af69fc3ce" [label=""];
  "sha256:9c289e9621e7b2ca6e14f84b3c8ca0ff2cda3379a4c1082fc569246af69fc3ce" -> "sha256:c875113068467f946208f262e26e2051192b99d62a2fa93f10900f8e89fd0119" [label=""];
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" -> "sha256:0b7947512e740792b1441c13a6848a328f3a2571980dbd0f921cdc2e8bf1d552" [label=""];
  "sha256:c875113068467f946208f262e26e2051192b99d62a2fa93f10900f8e89fd0119" -> "sha256:0b7947512e740792b1441c13a6848a328f3a2571980dbd0f921cdc2e8bf1d552" [label=""];
  "sha256:0b7947512e740792b1441c13a6848a328f3a2571980dbd0f921cdc2e8bf1d552" -> "sha256:602ac9b167b7585d06b3ae21fba71e2daa5effcc2fbc03b3011d9980ebe5203d" [label=""];
  "sha256:0c38d88f734d94e8297c42cb832a451ed982aa8f993067c452b4af0c3dd10ecf" -> "sha256:602ac9b167b7585d06b3ae21fba71e2daa5effcc2fbc03b3011d9980ebe5203d" [label=""];
  "sha256:602ac9b167b7585d06b3ae21fba71e2daa5effcc2fbc03b3011d9980ebe5203d" -> "sha256:31c1380f1dc758a2f7954a2b6130025a9cd1e75f2a323a14cc4ec048e277c7c8" [label=""];
}

