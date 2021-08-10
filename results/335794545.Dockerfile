[app/sources/335794545.Dockerfile]
digraph {
  "sha256:2c3981f7dd2dc6f7d0aee36815f9bc4c295ee6d0690d7f9d144fda2078032e1c" [label="docker-image://docker.io/library/python:3.7-alpine" shape="ellipse"];
  "sha256:cfef394120e7a37340bdb2c12a92b145ff4f31835ab3a0d6e53d4884a90059f6" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:95be216bbe20cd9176bd83b1f19907b7ab5069b4ec658286d488cc57d2cfc06c" [label="local://context" shape="ellipse"];
  "sha256:52be520a6e75f38f97f13fd3b31984776226a6595cbcbddf524d4c84fa2e382f" [label="copy{src=/requirements.txt, dest=/usr/src/app/}" shape="note"];
  "sha256:7ec7f2226cfd48f54714a7891d5ca0039a821142e697b86d5f739c8fa137156b" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:c384e1cb77a3f4d500141c14f9b1f1c04fc434254a013165e8a3252930e8111f" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:e3fb6a1cfd79b563d19f2b47322b74023858285a40c5258395c751e68a5e4f0b" [label="sha256:e3fb6a1cfd79b563d19f2b47322b74023858285a40c5258395c751e68a5e4f0b" shape="plaintext"];
  "sha256:2c3981f7dd2dc6f7d0aee36815f9bc4c295ee6d0690d7f9d144fda2078032e1c" -> "sha256:cfef394120e7a37340bdb2c12a92b145ff4f31835ab3a0d6e53d4884a90059f6" [label=""];
  "sha256:cfef394120e7a37340bdb2c12a92b145ff4f31835ab3a0d6e53d4884a90059f6" -> "sha256:52be520a6e75f38f97f13fd3b31984776226a6595cbcbddf524d4c84fa2e382f" [label=""];
  "sha256:95be216bbe20cd9176bd83b1f19907b7ab5069b4ec658286d488cc57d2cfc06c" -> "sha256:52be520a6e75f38f97f13fd3b31984776226a6595cbcbddf524d4c84fa2e382f" [label=""];
  "sha256:52be520a6e75f38f97f13fd3b31984776226a6595cbcbddf524d4c84fa2e382f" -> "sha256:7ec7f2226cfd48f54714a7891d5ca0039a821142e697b86d5f739c8fa137156b" [label=""];
  "sha256:7ec7f2226cfd48f54714a7891d5ca0039a821142e697b86d5f739c8fa137156b" -> "sha256:c384e1cb77a3f4d500141c14f9b1f1c04fc434254a013165e8a3252930e8111f" [label=""];
  "sha256:95be216bbe20cd9176bd83b1f19907b7ab5069b4ec658286d488cc57d2cfc06c" -> "sha256:c384e1cb77a3f4d500141c14f9b1f1c04fc434254a013165e8a3252930e8111f" [label=""];
  "sha256:c384e1cb77a3f4d500141c14f9b1f1c04fc434254a013165e8a3252930e8111f" -> "sha256:e3fb6a1cfd79b563d19f2b47322b74023858285a40c5258395c751e68a5e4f0b" [label=""];
}

