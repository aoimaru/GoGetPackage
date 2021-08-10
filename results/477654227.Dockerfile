[app/sources/477654227.Dockerfile]
digraph {
  "sha256:0d8695d785ee476862329c1233a1ddf140c22d57b1c83cd6b9a2581499edeb04" [label="docker-image://docker.io/library/nextcloud:fpm" shape="ellipse"];
  "sha256:abf75fdfa9256bb81ea4285a2401b4842e47365c8cdb2e97d33f33ef7779690f" [label="/bin/sh -c apt-get update && apt-get install -y     supervisor   && rm -rf /var/lib/apt/lists/*   && mkdir /var/log/supervisord /var/run/supervisord" shape="box"];
  "sha256:4ae2836a698368c09b339c56e96c044a488a831eb752f97d564df8404b4ec5c9" [label="local://context" shape="ellipse"];
  "sha256:53a585e2f404e78124ee4ca15df9f033275d26fb45c781bdff46215b0083ff5c" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/supervisord.conf}" shape="note"];
  "sha256:ed3750d8c95273679ddc3d327ec0d3590e36943a6eddf989ac26f1e4ea8b4812" [label="sha256:ed3750d8c95273679ddc3d327ec0d3590e36943a6eddf989ac26f1e4ea8b4812" shape="plaintext"];
  "sha256:0d8695d785ee476862329c1233a1ddf140c22d57b1c83cd6b9a2581499edeb04" -> "sha256:abf75fdfa9256bb81ea4285a2401b4842e47365c8cdb2e97d33f33ef7779690f" [label=""];
  "sha256:abf75fdfa9256bb81ea4285a2401b4842e47365c8cdb2e97d33f33ef7779690f" -> "sha256:53a585e2f404e78124ee4ca15df9f033275d26fb45c781bdff46215b0083ff5c" [label=""];
  "sha256:4ae2836a698368c09b339c56e96c044a488a831eb752f97d564df8404b4ec5c9" -> "sha256:53a585e2f404e78124ee4ca15df9f033275d26fb45c781bdff46215b0083ff5c" [label=""];
  "sha256:53a585e2f404e78124ee4ca15df9f033275d26fb45c781bdff46215b0083ff5c" -> "sha256:ed3750d8c95273679ddc3d327ec0d3590e36943a6eddf989ac26f1e4ea8b4812" [label=""];
}

