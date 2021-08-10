[app/sources/224449385.Dockerfile]
digraph {
  "sha256:104d5fde58ac954e44d250b492e6fcc2abd6f0a6ef087723bc42a37f78c447e8" [label="docker-image://docker.io/library/python:3.4" shape="ellipse"];
  "sha256:a195809b483dd0915bf7f3dff3e1f19767f9c09433d313c97542a7ec09dddf72" [label="local://context" shape="ellipse"];
  "sha256:00f56c10c61dd326ec88f0319b515a01c6a305978c2aedfa8332f664a0bb235d" [label="copy{src=/, dest=/app/tweeter/}" shape="note"];
  "sha256:cd38f39ea3df4f541c337c1d2c446caf54176f6907a5cc9e8e625b154eb034f0" [label="mkdir{path=/app/tweeter}" shape="note"];
  "sha256:6c875f9cf3d3991c769e8f70e45765656e32c34d6bcd7af45282beb2450b6b21" [label="/bin/sh -c pip install -r /app/tweeter/requirements.txt" shape="box"];
  "sha256:01dd56ac8ec00d734346619da2acda88f9915000a7364a4e8ffc76aac854622c" [label="sha256:01dd56ac8ec00d734346619da2acda88f9915000a7364a4e8ffc76aac854622c" shape="plaintext"];
  "sha256:104d5fde58ac954e44d250b492e6fcc2abd6f0a6ef087723bc42a37f78c447e8" -> "sha256:00f56c10c61dd326ec88f0319b515a01c6a305978c2aedfa8332f664a0bb235d" [label=""];
  "sha256:a195809b483dd0915bf7f3dff3e1f19767f9c09433d313c97542a7ec09dddf72" -> "sha256:00f56c10c61dd326ec88f0319b515a01c6a305978c2aedfa8332f664a0bb235d" [label=""];
  "sha256:00f56c10c61dd326ec88f0319b515a01c6a305978c2aedfa8332f664a0bb235d" -> "sha256:cd38f39ea3df4f541c337c1d2c446caf54176f6907a5cc9e8e625b154eb034f0" [label=""];
  "sha256:cd38f39ea3df4f541c337c1d2c446caf54176f6907a5cc9e8e625b154eb034f0" -> "sha256:6c875f9cf3d3991c769e8f70e45765656e32c34d6bcd7af45282beb2450b6b21" [label=""];
  "sha256:6c875f9cf3d3991c769e8f70e45765656e32c34d6bcd7af45282beb2450b6b21" -> "sha256:01dd56ac8ec00d734346619da2acda88f9915000a7364a4e8ffc76aac854622c" [label=""];
}

