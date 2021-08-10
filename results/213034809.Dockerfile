[app/sources/213034809.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:ecfe572d61bf39a9d653f281a96063a4ba9f2c678779fd082c6e810427b94018" [label="/bin/sh -c apk add -U openssl" shape="box"];
  "sha256:508fe27557592c1cd07f2cdcb44a857353b750a2c450d901b32f78d939a32716" [label="local://context" shape="ellipse"];
  "sha256:ed36eea57372f2366d7ea914ad74c92c107dae9d96deffe37ad22892bb3fcca3" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:3673645a4ea713f98ebcfce4e7f350425f2a44eef206400064e872da643167b4" [label="sha256:3673645a4ea713f98ebcfce4e7f350425f2a44eef206400064e872da643167b4" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:ecfe572d61bf39a9d653f281a96063a4ba9f2c678779fd082c6e810427b94018" [label=""];
  "sha256:ecfe572d61bf39a9d653f281a96063a4ba9f2c678779fd082c6e810427b94018" -> "sha256:ed36eea57372f2366d7ea914ad74c92c107dae9d96deffe37ad22892bb3fcca3" [label=""];
  "sha256:508fe27557592c1cd07f2cdcb44a857353b750a2c450d901b32f78d939a32716" -> "sha256:ed36eea57372f2366d7ea914ad74c92c107dae9d96deffe37ad22892bb3fcca3" [label=""];
  "sha256:ed36eea57372f2366d7ea914ad74c92c107dae9d96deffe37ad22892bb3fcca3" -> "sha256:3673645a4ea713f98ebcfce4e7f350425f2a44eef206400064e872da643167b4" [label=""];
}

