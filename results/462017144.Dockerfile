[app/sources/462017144.Dockerfile]
digraph {
  "sha256:b176d816825c0f2fe5ce9e1dd603f601af4c1f3f09d7c56cf66034064cc36ee0" [label="docker-image://docker.io/jenkins/jenkins@sha256:b16702b350fc92c9ee5b29fa69f96dd3b20ee10d8c6bd0a5bb08a3001bd166ed" shape="ellipse"];
  "sha256:d7408788ef737b401943818da75c7a177fafa889e9a17163f7283dfb8fbd96e0" [label="/bin/sh -c mkdir -p /tmp/download &&  curl -L https://download.docker.com/linux/static/stable/x86_64/docker-18.03.1-ce.tgz | tar -xz -C /tmp/download &&  rm -rf /tmp/download/docker/dockerd &&  mv /tmp/download/docker/docker* /usr/local/bin/ &&  rm -rf /tmp/download &&  groupadd -g 999 docker &&  usermod -aG staff,docker jenkins" shape="box"];
  "sha256:a1bacea2770cc279e1fdb72c2a7ac2962c8ad2ae0dbeafa32b2e482efa91d758" [label="sha256:a1bacea2770cc279e1fdb72c2a7ac2962c8ad2ae0dbeafa32b2e482efa91d758" shape="plaintext"];
  "sha256:b176d816825c0f2fe5ce9e1dd603f601af4c1f3f09d7c56cf66034064cc36ee0" -> "sha256:d7408788ef737b401943818da75c7a177fafa889e9a17163f7283dfb8fbd96e0" [label=""];
  "sha256:d7408788ef737b401943818da75c7a177fafa889e9a17163f7283dfb8fbd96e0" -> "sha256:a1bacea2770cc279e1fdb72c2a7ac2962c8ad2ae0dbeafa32b2e482efa91d758" [label=""];
}

