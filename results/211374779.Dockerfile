[app/sources/211374779.Dockerfile]
digraph {
  "sha256:6514ccc48a80061a0991a535f5fdc7e1723f1cc2554c9b240734de0f511240cb" [label="docker-image://docker.io/arm32v6/alpine:3.9" shape="ellipse"];
  "sha256:bb294cb13ddafca6da46b77dee4ff9772227107efa6212fe64e5ca284211e597" [label="local://context" shape="ellipse"];
  "sha256:8f523d1d0311cc7decdf26905c2e1e97c411b88c531f2d9c5ceb48687fa8b35d" [label="copy{src=/qemu-armhf-static, dest=/usr/bin/}" shape="note"];
  "sha256:94035ad5b54b9508fc9b6ff5c6454e89533065e11f228917afcc24467cfc70ab" [label="qemu-armhf-static -0 /bin/sh /bin/sh -c apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main ip6tables" shape="box"];
  "sha256:6026d8f96d8f82ddfa2ace0d14b6d0cebebb71d8f99e3ee1918728e476896254" [label="https://github.com/robbertkl/docker-ipv6nat/releases/download/v0.3.7/docker-ipv6nat.armhf" shape="ellipse"];
  "sha256:32c328247779448b1f309e0f4047c3e51008bf93644bb07bef27062a8a53a09d" [label="copy{src=/docker-ipv6nat.armhf, dest=/docker-ipv6nat}" shape="note"];
  "sha256:3b3172b5d3c70a37ecf87d179d43cfe2de64977864f3c35c84eeb176f553274e" [label="qemu-armhf-static -0 /bin/sh /bin/sh -c chmod u+x /docker-ipv6nat" shape="box"];
  "sha256:83ad605a9153fae54cb4a603c69392cf62840d9127e71da76555ebc829ba14d2" [label="copy{src=/docker-ipv6nat-compat, dest=/}" shape="note"];
  "sha256:26e159e82c0c267fd9adef70275e6911758c089128b3c16ea9cd7c804ae268e3" [label="sha256:26e159e82c0c267fd9adef70275e6911758c089128b3c16ea9cd7c804ae268e3" shape="plaintext"];
  "sha256:6514ccc48a80061a0991a535f5fdc7e1723f1cc2554c9b240734de0f511240cb" -> "sha256:8f523d1d0311cc7decdf26905c2e1e97c411b88c531f2d9c5ceb48687fa8b35d" [label=""];
  "sha256:bb294cb13ddafca6da46b77dee4ff9772227107efa6212fe64e5ca284211e597" -> "sha256:8f523d1d0311cc7decdf26905c2e1e97c411b88c531f2d9c5ceb48687fa8b35d" [label=""];
  "sha256:8f523d1d0311cc7decdf26905c2e1e97c411b88c531f2d9c5ceb48687fa8b35d" -> "sha256:94035ad5b54b9508fc9b6ff5c6454e89533065e11f228917afcc24467cfc70ab" [label=""];
  "sha256:94035ad5b54b9508fc9b6ff5c6454e89533065e11f228917afcc24467cfc70ab" -> "sha256:32c328247779448b1f309e0f4047c3e51008bf93644bb07bef27062a8a53a09d" [label=""];
  "sha256:6026d8f96d8f82ddfa2ace0d14b6d0cebebb71d8f99e3ee1918728e476896254" -> "sha256:32c328247779448b1f309e0f4047c3e51008bf93644bb07bef27062a8a53a09d" [label=""];
  "sha256:32c328247779448b1f309e0f4047c3e51008bf93644bb07bef27062a8a53a09d" -> "sha256:3b3172b5d3c70a37ecf87d179d43cfe2de64977864f3c35c84eeb176f553274e" [label=""];
  "sha256:3b3172b5d3c70a37ecf87d179d43cfe2de64977864f3c35c84eeb176f553274e" -> "sha256:83ad605a9153fae54cb4a603c69392cf62840d9127e71da76555ebc829ba14d2" [label=""];
  "sha256:bb294cb13ddafca6da46b77dee4ff9772227107efa6212fe64e5ca284211e597" -> "sha256:83ad605a9153fae54cb4a603c69392cf62840d9127e71da76555ebc829ba14d2" [label=""];
  "sha256:83ad605a9153fae54cb4a603c69392cf62840d9127e71da76555ebc829ba14d2" -> "sha256:26e159e82c0c267fd9adef70275e6911758c089128b3c16ea9cd7c804ae268e3" [label=""];
}

