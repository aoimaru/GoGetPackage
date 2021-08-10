[app/sources/329876043.Dockerfile]
digraph {
  "sha256:9604f03a5d908ede35a6036e03581a72dae02f668559477f610f397997ae3dd5" [label="docker-image://docker.io/zuohuadong/caddy:alpine" shape="ellipse"];
  "sha256:50d990c392132e1d759ca3958225ae4e985c7d729170ce4a2508368c5cdf40f5" [label="/bin/sh -c caddyplug install ${plugins}" shape="box"];
  "sha256:5413aa8fedd8ebabca4cad8cc6d442fddaa8f10957f81aa6aaa146ed77650128" [label="mkdir{path=/var/www/public}" shape="note"];
  "sha256:864cacd99b04cb623712d9e99943bc467fc0f41010efec63e2aafcbeaa0d2548" [label="sha256:864cacd99b04cb623712d9e99943bc467fc0f41010efec63e2aafcbeaa0d2548" shape="plaintext"];
  "sha256:9604f03a5d908ede35a6036e03581a72dae02f668559477f610f397997ae3dd5" -> "sha256:50d990c392132e1d759ca3958225ae4e985c7d729170ce4a2508368c5cdf40f5" [label=""];
  "sha256:50d990c392132e1d759ca3958225ae4e985c7d729170ce4a2508368c5cdf40f5" -> "sha256:5413aa8fedd8ebabca4cad8cc6d442fddaa8f10957f81aa6aaa146ed77650128" [label=""];
  "sha256:5413aa8fedd8ebabca4cad8cc6d442fddaa8f10957f81aa6aaa146ed77650128" -> "sha256:864cacd99b04cb623712d9e99943bc467fc0f41010efec63e2aafcbeaa0d2548" [label=""];
}

