[app/sources/341898268.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:3cca0ba8d7408855dedc1c0f540d75e721b4706aac813c94d90e78374aa086ac" [label="local://context" shape="ellipse"];
  "sha256:95b58c73faa2fd537fae4468a5a8c03f502e5e1f161ffe53338ee94e5a0e2868" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:475803169e9d2d13e63b8bfece39b2588c253782fa14f100f168d25352a8b36a" [label="pip install numpy" shape="box"];
  "sha256:e2d4993a80b8818779ccfef05bbc0fb9000fd85f04e686dc174c51d878fa00d0" [label="pip install numpy" shape="box"];
  "sha256:3ecd7a64c7586614d4099cafd4914040c9788c9c878eb7bd95dc4a81b9df8817" [label="sha256:3ecd7a64c7586614d4099cafd4914040c9788c9c878eb7bd95dc4a81b9df8817" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:95b58c73faa2fd537fae4468a5a8c03f502e5e1f161ffe53338ee94e5a0e2868" [label=""];
  "sha256:3cca0ba8d7408855dedc1c0f540d75e721b4706aac813c94d90e78374aa086ac" -> "sha256:95b58c73faa2fd537fae4468a5a8c03f502e5e1f161ffe53338ee94e5a0e2868" [label=""];
  "sha256:95b58c73faa2fd537fae4468a5a8c03f502e5e1f161ffe53338ee94e5a0e2868" -> "sha256:475803169e9d2d13e63b8bfece39b2588c253782fa14f100f168d25352a8b36a" [label=""];
  "sha256:475803169e9d2d13e63b8bfece39b2588c253782fa14f100f168d25352a8b36a" -> "sha256:e2d4993a80b8818779ccfef05bbc0fb9000fd85f04e686dc174c51d878fa00d0" [label=""];
  "sha256:e2d4993a80b8818779ccfef05bbc0fb9000fd85f04e686dc174c51d878fa00d0" -> "sha256:3ecd7a64c7586614d4099cafd4914040c9788c9c878eb7bd95dc4a81b9df8817" [label=""];
}

