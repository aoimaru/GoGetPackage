[app/sources/277182080.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:24bae0134e47ea0dfde6941369a0c86a3fe0851f655ddf27514129892f013f8f" [label="/bin/sh -c apk add --no-cache cifs-utils ca-certificates     && adduser -D -u 1000 chartmuseum" shape="box"];
  "sha256:e2c572de605e12cde90adda03b632ee58efd68c6907bc94b068431fdcf5fad09" [label="local://context" shape="ellipse"];
  "sha256:74dfebbe49e3a6fb75c6477a5eb8881d6ad5f4f972693cda0838e3bf2031821c" [label="copy{src=/bin/linux/amd64/chartmuseum, dest=/chartmuseum}" shape="note"];
  "sha256:31b187dfac990201cdc0611ff9688288f36f42bf1abdd350b32afb90b6f3735c" [label="sha256:31b187dfac990201cdc0611ff9688288f36f42bf1abdd350b32afb90b6f3735c" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:24bae0134e47ea0dfde6941369a0c86a3fe0851f655ddf27514129892f013f8f" [label=""];
  "sha256:24bae0134e47ea0dfde6941369a0c86a3fe0851f655ddf27514129892f013f8f" -> "sha256:74dfebbe49e3a6fb75c6477a5eb8881d6ad5f4f972693cda0838e3bf2031821c" [label=""];
  "sha256:e2c572de605e12cde90adda03b632ee58efd68c6907bc94b068431fdcf5fad09" -> "sha256:74dfebbe49e3a6fb75c6477a5eb8881d6ad5f4f972693cda0838e3bf2031821c" [label=""];
  "sha256:74dfebbe49e3a6fb75c6477a5eb8881d6ad5f4f972693cda0838e3bf2031821c" -> "sha256:31b187dfac990201cdc0611ff9688288f36f42bf1abdd350b32afb90b6f3735c" [label=""];
}

