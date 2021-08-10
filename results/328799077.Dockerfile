[app/sources/328799077.Dockerfile]
digraph {
  "sha256:8e1beec418db61e746cc64a2dcc7c86524df7b873abaeb150f7762078d14562b" [label="docker-image://docker.io/library/nginx:1.12" shape="ellipse"];
  "sha256:44fd6f98bb8111e3055a9770d945257701991e350974e508488a747a6003ff3d" [label="local://context" shape="ellipse"];
  "sha256:2729397b8ba5a3bcf360cef734dc44690d0cef189b2c87726d99fa11df81815b" [label="copy{src=/default.conf.template, dest=/}" shape="note"];
  "sha256:4b4f3ed6bf73bd15ed0afa3df30299cc1683cd09239ec8d091a8dcf24fb97d27" [label="/bin/sh -c sed -i 's/user *nginx;/user www-data;/g' /etc/nginx/nginx.conf  && sed -i 's/${SERVER_NAME}/bluz.com/g' /default.conf.template  && sed -i 's/${DOC_ROOT}/\\/var\\/www/g' /default.conf.template  && cp default.conf.template /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:c4fdf498530a462cb8e5b73535c8501dcda194d396aa269c52e304fa2b7faf97" [label="sha256:c4fdf498530a462cb8e5b73535c8501dcda194d396aa269c52e304fa2b7faf97" shape="plaintext"];
  "sha256:8e1beec418db61e746cc64a2dcc7c86524df7b873abaeb150f7762078d14562b" -> "sha256:2729397b8ba5a3bcf360cef734dc44690d0cef189b2c87726d99fa11df81815b" [label=""];
  "sha256:44fd6f98bb8111e3055a9770d945257701991e350974e508488a747a6003ff3d" -> "sha256:2729397b8ba5a3bcf360cef734dc44690d0cef189b2c87726d99fa11df81815b" [label=""];
  "sha256:2729397b8ba5a3bcf360cef734dc44690d0cef189b2c87726d99fa11df81815b" -> "sha256:4b4f3ed6bf73bd15ed0afa3df30299cc1683cd09239ec8d091a8dcf24fb97d27" [label=""];
  "sha256:4b4f3ed6bf73bd15ed0afa3df30299cc1683cd09239ec8d091a8dcf24fb97d27" -> "sha256:c4fdf498530a462cb8e5b73535c8501dcda194d396aa269c52e304fa2b7faf97" [label=""];
}

