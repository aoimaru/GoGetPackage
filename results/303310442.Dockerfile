[app/sources/303310442.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:6ec46cd00918ae7c2d95bc24cf2343f2e935f590faf90146750a11481a771792" [label="mkdir{path=/app}" shape="note"];
  "sha256:fa851e0c2bbed6537f1cd97a6ee57f9243e5517e3426f45330ec27a7db67b830" [label="local://context" shape="ellipse"];
  "sha256:7b88d9c480f83e4b0f60a78bbe27030fd6480cddc533f152bb715f5f9d09a7e8" [label="copy{src=/requirements.txt, dest=/app/}" shape="note"];
  "sha256:b5576ba9b84cb7a17eebd8a2e87ed685ff5bdc53d36037d5833848ca4cd6ff94" [label="/bin/sh -c pip install --trusted-host pypi.python.org -r requirements.txt" shape="box"];
  "sha256:785313c4c8dd0cbe6685343c7d4c71f453c0b1556c4abb2185bc4819f065cdfb" [label="/bin/sh -c pip install ptvsd" shape="box"];
  "sha256:1214a2c2a9f8d2e6c934a34e853d65515971bf33463a1416fa77074402afc755" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:3d804fbe30c610b5816ab273b5deb197e70d31da58bc43e45ea144542f6aff3f" [label="sha256:3d804fbe30c610b5816ab273b5deb197e70d31da58bc43e45ea144542f6aff3f" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:6ec46cd00918ae7c2d95bc24cf2343f2e935f590faf90146750a11481a771792" [label=""];
  "sha256:6ec46cd00918ae7c2d95bc24cf2343f2e935f590faf90146750a11481a771792" -> "sha256:7b88d9c480f83e4b0f60a78bbe27030fd6480cddc533f152bb715f5f9d09a7e8" [label=""];
  "sha256:fa851e0c2bbed6537f1cd97a6ee57f9243e5517e3426f45330ec27a7db67b830" -> "sha256:7b88d9c480f83e4b0f60a78bbe27030fd6480cddc533f152bb715f5f9d09a7e8" [label=""];
  "sha256:7b88d9c480f83e4b0f60a78bbe27030fd6480cddc533f152bb715f5f9d09a7e8" -> "sha256:b5576ba9b84cb7a17eebd8a2e87ed685ff5bdc53d36037d5833848ca4cd6ff94" [label=""];
  "sha256:b5576ba9b84cb7a17eebd8a2e87ed685ff5bdc53d36037d5833848ca4cd6ff94" -> "sha256:785313c4c8dd0cbe6685343c7d4c71f453c0b1556c4abb2185bc4819f065cdfb" [label=""];
  "sha256:785313c4c8dd0cbe6685343c7d4c71f453c0b1556c4abb2185bc4819f065cdfb" -> "sha256:1214a2c2a9f8d2e6c934a34e853d65515971bf33463a1416fa77074402afc755" [label=""];
  "sha256:fa851e0c2bbed6537f1cd97a6ee57f9243e5517e3426f45330ec27a7db67b830" -> "sha256:1214a2c2a9f8d2e6c934a34e853d65515971bf33463a1416fa77074402afc755" [label=""];
  "sha256:1214a2c2a9f8d2e6c934a34e853d65515971bf33463a1416fa77074402afc755" -> "sha256:3d804fbe30c610b5816ab273b5deb197e70d31da58bc43e45ea144542f6aff3f" [label=""];
}

