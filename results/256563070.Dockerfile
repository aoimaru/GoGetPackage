[app/sources/256563070.Dockerfile]
digraph {
  "sha256:b3ec4443764db7e76b40e9a89f6034ef038c1750a0dc0588f11d6bd2e10b9d74" [label="docker-image://docker.io/microsoft/vsts-agent:ubuntu-14.04" shape="ellipse"];
  "sha256:6dc97e83e26198a0c9a6c285330e71cd79c1b91a5ab5e4f59f37aa072f71c57e" [label="/bin/sh -c set -ex  && curl -fL \"https://download.docker.com/linux/static/${DOCKER_CHANNEL}/`uname -m`/docker-${DOCKER_VERSION}.tgz\" -o docker.tgz  && tar --extract --file docker.tgz --strip-components 1 --directory /usr/local/bin  && rm docker.tgz  && docker -v" shape="box"];
  "sha256:bb93319aebcb994aff80e77f8fca05ea1baa12644f3be99ed964001ebdcd18bb" [label="/bin/sh -c set -x  && curl -fSL \"https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-`uname -s`-`uname -m`\" -o /usr/local/bin/docker-compose  && chmod +x /usr/local/bin/docker-compose  && docker-compose -v" shape="box"];
  "sha256:da8fda71a85ed1cac5b9c4d970b910cce2e13c405123a6963f1167b76bf7fdd3" [label="sha256:da8fda71a85ed1cac5b9c4d970b910cce2e13c405123a6963f1167b76bf7fdd3" shape="plaintext"];
  "sha256:b3ec4443764db7e76b40e9a89f6034ef038c1750a0dc0588f11d6bd2e10b9d74" -> "sha256:6dc97e83e26198a0c9a6c285330e71cd79c1b91a5ab5e4f59f37aa072f71c57e" [label=""];
  "sha256:6dc97e83e26198a0c9a6c285330e71cd79c1b91a5ab5e4f59f37aa072f71c57e" -> "sha256:bb93319aebcb994aff80e77f8fca05ea1baa12644f3be99ed964001ebdcd18bb" [label=""];
  "sha256:bb93319aebcb994aff80e77f8fca05ea1baa12644f3be99ed964001ebdcd18bb" -> "sha256:da8fda71a85ed1cac5b9c4d970b910cce2e13c405123a6963f1167b76bf7fdd3" [label=""];
}

