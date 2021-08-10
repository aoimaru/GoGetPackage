[app/sources/457037820.Dockerfile]
digraph {
  "sha256:39c52c3b04c89f6f541172173d98937d209bb2fd2d47b85c278fd7a69fbbc185" [label="docker-image://docker.io/jwilder/nginx-proxy:latest" shape="ellipse"];
  "sha256:69edf839f255c57fe5e53388e573fda456cfbed6843d3b30857c7daa4f7287e5" [label="/bin/sh -c {       echo 'proxy_connect_timeout 86400;';       echo 'proxy_send_timeout 86400;';       echo 'proxy_read_timeout 86400;';       echo 'send_timeout 86400;';     } > /etc/nginx/conf.d/extended_timeout.conf" shape="box"];
  "sha256:7cd6bd000f437af994d1205fc20d8182d45d148593e409f20b496431fd638588" [label="sha256:7cd6bd000f437af994d1205fc20d8182d45d148593e409f20b496431fd638588" shape="plaintext"];
  "sha256:39c52c3b04c89f6f541172173d98937d209bb2fd2d47b85c278fd7a69fbbc185" -> "sha256:69edf839f255c57fe5e53388e573fda456cfbed6843d3b30857c7daa4f7287e5" [label=""];
  "sha256:69edf839f255c57fe5e53388e573fda456cfbed6843d3b30857c7daa4f7287e5" -> "sha256:7cd6bd000f437af994d1205fc20d8182d45d148593e409f20b496431fd638588" [label=""];
}

