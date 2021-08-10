[app/sources/252772053.Dockerfile]
digraph {
  "sha256:2b79287fb0d69db2678026c8a6634400451f2c51ea9fc6de7011228cfa936dcf" [label="docker-image://docker.io/tiangolo/uwsgi-nginx-flask:flask" shape="ellipse"];
  "sha256:34f393e7380dc39fbc2291cb6b7882dae376d51e49b54ca27826f03f87e6042d" [label="mkdir{path=/app}" shape="note"];
  "sha256:cbcb2dd61445eff52d2b0f76f7e300a19d971801d06ea6b38db65d6e9d185323" [label="/bin/sh -c pip install --upgrade pip && pip install Celery" shape="box"];
  "sha256:2d9dc99a81e958bcb5b4611743f27e5416a6e36aa852344a05b05462abda474f" [label="local://context" shape="ellipse"];
  "sha256:8ad0a8080b3d93b6028b18ea3ad30da7fe9492536a76e7c60a2e602ebf5aac65" [label="copy{src=/init_app.sh, dest=/etc/auge.digital/init_app.sh}" shape="note"];
  "sha256:581afdc96d4680a8319f23390fc8c500b96f22d86ff34302da7cef2a8e4a915d" [label="/bin/sh -c chmod 0700 /etc/auge.digital/init_app.sh" shape="box"];
  "sha256:618a00fbdb25ae234150ae7c3b944265bd6d99e1008c9e63c7656d27fe06748c" [label="sha256:618a00fbdb25ae234150ae7c3b944265bd6d99e1008c9e63c7656d27fe06748c" shape="plaintext"];
  "sha256:2b79287fb0d69db2678026c8a6634400451f2c51ea9fc6de7011228cfa936dcf" -> "sha256:34f393e7380dc39fbc2291cb6b7882dae376d51e49b54ca27826f03f87e6042d" [label=""];
  "sha256:34f393e7380dc39fbc2291cb6b7882dae376d51e49b54ca27826f03f87e6042d" -> "sha256:cbcb2dd61445eff52d2b0f76f7e300a19d971801d06ea6b38db65d6e9d185323" [label=""];
  "sha256:cbcb2dd61445eff52d2b0f76f7e300a19d971801d06ea6b38db65d6e9d185323" -> "sha256:8ad0a8080b3d93b6028b18ea3ad30da7fe9492536a76e7c60a2e602ebf5aac65" [label=""];
  "sha256:2d9dc99a81e958bcb5b4611743f27e5416a6e36aa852344a05b05462abda474f" -> "sha256:8ad0a8080b3d93b6028b18ea3ad30da7fe9492536a76e7c60a2e602ebf5aac65" [label=""];
  "sha256:8ad0a8080b3d93b6028b18ea3ad30da7fe9492536a76e7c60a2e602ebf5aac65" -> "sha256:581afdc96d4680a8319f23390fc8c500b96f22d86ff34302da7cef2a8e4a915d" [label=""];
  "sha256:581afdc96d4680a8319f23390fc8c500b96f22d86ff34302da7cef2a8e4a915d" -> "sha256:618a00fbdb25ae234150ae7c3b944265bd6d99e1008c9e63c7656d27fe06748c" [label=""];
}

