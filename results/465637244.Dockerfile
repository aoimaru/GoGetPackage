[app/sources/465637244.Dockerfile]
digraph {
  "sha256:09423f338757da5b59d3090ed6d8531f21c8d5ab987570e69be410bde4a6742b" [label="docker-image://docker.io/hassioaddons/base:4.0.1" shape="ellipse"];
  "sha256:ce428884bcbdb707ad01a0a35e9dddbe6396eaa281944a87074b8b762a683575" [label="local://context" shape="ellipse"];
  "sha256:0680d5f57449219c723ec32faa4d6bee6c63b96b4d531e9b065a6afa2a39ff38" [label="copy{src=/requirements.txt, dest=/tmp/}" shape="note"];
  "sha256:8198fe5821d3626753c263d31a95433789314fd247e72bbe44352ccf86fe375e" [label="/bin/bash -o pipefail -c apk add --no-cache --virtual .build-dependencies         curl-dev=7.65.1-r0         gcc=8.3.0-r0         jpeg-dev=8-r6         musl-dev=1.1.22-r2         py2-pip=18.1-r0         python-dev=2.7.16-r1         && apk add --no-cache         cifs-utils=6.9-r0         ffmpeg=4.1.3-r1         libcurl=7.65.1-r0         libjpeg=8-r6         mosquitto-clients=1.6.3-r0         motion@edge=4.2.2-r0         nginx=1.16.0-r2         py-setuptools=40.8.0-r1         python2=2.7.16-r1         && pip install --no-cache-dir -r /tmp/requirements.txt         && apk del --no-cache --purge .build-dependencies     && rm -f -r /tmp/*" shape="box"];
  "sha256:8880611ced79d34ad55999c73af0896b822241baa1833b1786f6690d66b832ba" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:b94f273ea91c246560b21ba1a0840fbaf39d224da456dbd2974e2d051421cd69" [label="sha256:b94f273ea91c246560b21ba1a0840fbaf39d224da456dbd2974e2d051421cd69" shape="plaintext"];
  "sha256:09423f338757da5b59d3090ed6d8531f21c8d5ab987570e69be410bde4a6742b" -> "sha256:0680d5f57449219c723ec32faa4d6bee6c63b96b4d531e9b065a6afa2a39ff38" [label=""];
  "sha256:ce428884bcbdb707ad01a0a35e9dddbe6396eaa281944a87074b8b762a683575" -> "sha256:0680d5f57449219c723ec32faa4d6bee6c63b96b4d531e9b065a6afa2a39ff38" [label=""];
  "sha256:0680d5f57449219c723ec32faa4d6bee6c63b96b4d531e9b065a6afa2a39ff38" -> "sha256:8198fe5821d3626753c263d31a95433789314fd247e72bbe44352ccf86fe375e" [label=""];
  "sha256:8198fe5821d3626753c263d31a95433789314fd247e72bbe44352ccf86fe375e" -> "sha256:8880611ced79d34ad55999c73af0896b822241baa1833b1786f6690d66b832ba" [label=""];
  "sha256:ce428884bcbdb707ad01a0a35e9dddbe6396eaa281944a87074b8b762a683575" -> "sha256:8880611ced79d34ad55999c73af0896b822241baa1833b1786f6690d66b832ba" [label=""];
  "sha256:8880611ced79d34ad55999c73af0896b822241baa1833b1786f6690d66b832ba" -> "sha256:b94f273ea91c246560b21ba1a0840fbaf39d224da456dbd2974e2d051421cd69" [label=""];
}

