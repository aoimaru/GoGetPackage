[app/sources/340346366.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:9f1fb453fe9193584f1dbfb0e02989f35d02399fe063d9c3db5c84a941d7a6d0" [label="/bin/sh -c apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62" shape="box"];
  "sha256:55daba78a4b1cb7a886909b9a31e7376a4f8a01d76e491d7d0fceb8a324d670d" [label="/bin/sh -c echo \"deb http://nginx.org/packages/mainline/debian/ jessie nginx\" >> /etc/apt/sources.list" shape="box"];
  "sha256:6cb81904900402970dc0546b6745aa664ec4825d6b140651049777b20bf52bc3" [label="/bin/sh -c apt-get update &&     apt-get install -y ca-certificates nginx=${NGINX_VERSION} &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0db3dab11d4126ddebcc25834d4ae92226606e65d43d7fe5bae4a55e46f85fd2" [label="local://context" shape="ellipse"];
  "sha256:1a345363997305feeb469baafadd4da805f7596762237b3425c8c4af909dd64f" [label="copy{src=/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:a87334d278216d17fb51305b4fa19fca116c242cfb5f7f54f652eb4e1f3a2a07" [label="sha256:a87334d278216d17fb51305b4fa19fca116c242cfb5f7f54f652eb4e1f3a2a07" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:9f1fb453fe9193584f1dbfb0e02989f35d02399fe063d9c3db5c84a941d7a6d0" [label=""];
  "sha256:9f1fb453fe9193584f1dbfb0e02989f35d02399fe063d9c3db5c84a941d7a6d0" -> "sha256:55daba78a4b1cb7a886909b9a31e7376a4f8a01d76e491d7d0fceb8a324d670d" [label=""];
  "sha256:55daba78a4b1cb7a886909b9a31e7376a4f8a01d76e491d7d0fceb8a324d670d" -> "sha256:6cb81904900402970dc0546b6745aa664ec4825d6b140651049777b20bf52bc3" [label=""];
  "sha256:6cb81904900402970dc0546b6745aa664ec4825d6b140651049777b20bf52bc3" -> "sha256:1a345363997305feeb469baafadd4da805f7596762237b3425c8c4af909dd64f" [label=""];
  "sha256:0db3dab11d4126ddebcc25834d4ae92226606e65d43d7fe5bae4a55e46f85fd2" -> "sha256:1a345363997305feeb469baafadd4da805f7596762237b3425c8c4af909dd64f" [label=""];
  "sha256:1a345363997305feeb469baafadd4da805f7596762237b3425c8c4af909dd64f" -> "sha256:a87334d278216d17fb51305b4fa19fca116c242cfb5f7f54f652eb4e1f3a2a07" [label=""];
}

