[app/sources/252772326.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:33789134d3228be69c719d87ae5899869f35991141dcc5cb79bc7b9661262019" [label="/bin/sh -c mkdir -p /usr/share/nginx/html/dist" shape="box"];
  "sha256:d9cae4fc82b54887707f3d5866a1fe14f17b6d4f0a1ffc2c824c36097c6cd94a" [label="local://context" shape="ellipse"];
  "sha256:d745b6f3b5d48a00dabf2d0f8ec78ffd5983baed926e3cb1e19f2f66cefded89" [label="copy{src=/example, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:5cc081d7230f8d9909d1613bc7a9410d4ac4110002b3d53638b7ac2397febb5c" [label="copy{src=/dist, dest=/usr/share/nginx/html/dist}" shape="note"];
  "sha256:810e8bfbe0f937652c1447cf1e302b9c35c6baf79d712c0d83811071c3d66fab" [label="sha256:810e8bfbe0f937652c1447cf1e302b9c35c6baf79d712c0d83811071c3d66fab" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:33789134d3228be69c719d87ae5899869f35991141dcc5cb79bc7b9661262019" [label=""];
  "sha256:33789134d3228be69c719d87ae5899869f35991141dcc5cb79bc7b9661262019" -> "sha256:d745b6f3b5d48a00dabf2d0f8ec78ffd5983baed926e3cb1e19f2f66cefded89" [label=""];
  "sha256:d9cae4fc82b54887707f3d5866a1fe14f17b6d4f0a1ffc2c824c36097c6cd94a" -> "sha256:d745b6f3b5d48a00dabf2d0f8ec78ffd5983baed926e3cb1e19f2f66cefded89" [label=""];
  "sha256:d745b6f3b5d48a00dabf2d0f8ec78ffd5983baed926e3cb1e19f2f66cefded89" -> "sha256:5cc081d7230f8d9909d1613bc7a9410d4ac4110002b3d53638b7ac2397febb5c" [label=""];
  "sha256:d9cae4fc82b54887707f3d5866a1fe14f17b6d4f0a1ffc2c824c36097c6cd94a" -> "sha256:5cc081d7230f8d9909d1613bc7a9410d4ac4110002b3d53638b7ac2397febb5c" [label=""];
  "sha256:5cc081d7230f8d9909d1613bc7a9410d4ac4110002b3d53638b7ac2397febb5c" -> "sha256:810e8bfbe0f937652c1447cf1e302b9c35c6baf79d712c0d83811071c3d66fab" [label=""];
}

