[app/sources/320096061.Dockerfile]
digraph {
  "sha256:df2362834c22daf33e4803737ae3392af577a00f70dd0e86f383a052b9f095a7" [label="docker-image://docker.io/library/alpine:3.6@sha256:66790a2b79e1ea3e1dabac43990c54aca5d1ddf268d9a5a0285e4167c8b24475" shape="ellipse"];
  "sha256:228bbfbfae8abf14677d043a25c85805f123ee082c5b71214410993852dd00ef" [label="mkdir{path=/ghost}" shape="note"];
  "sha256:2cfc85bbcb8c60fc09a2627552fb356a968b98c6397a7e0b190f46a5329df8ca" [label="/bin/sh -c apk -U --no-cache add     bash     ca-certificates     grep     libressl     nodejs-current     nodejs-current-npm     s6     su-exec     vim  && wget -q https://github.com/TryGhost/Ghost/releases/download/${VERSION}/Ghost-${VERSION}.zip -P /tmp  && unzip -q /tmp/Ghost-${VERSION}.zip -d /ghost  && npm install --production  && mv content/themes/casper casper" shape="box"];
  "sha256:566205e38bf1a4f59626350d0cda8cb3161d21d062bde7c9505459fa7211adc3" [label="local://context" shape="ellipse"];
  "sha256:5e79e0e3c152fb0a0b71984f4aeb7c74fe67208b8288e76e69a774b02a522656" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:1dca63206dbabb41742464b555ac39e74097a98d967c3a327dbcbd66981c53e1" [label="/bin/sh -c chmod +x /usr/local/bin/* /etc/s6.d/*/* /etc/s6.d/.s6-svscan/*" shape="box"];
  "sha256:4833902bb81d897eb5582128c22dbddb8a0da4cfc471130ec0c6459e8ec46789" [label="sha256:4833902bb81d897eb5582128c22dbddb8a0da4cfc471130ec0c6459e8ec46789" shape="plaintext"];
  "sha256:df2362834c22daf33e4803737ae3392af577a00f70dd0e86f383a052b9f095a7" -> "sha256:228bbfbfae8abf14677d043a25c85805f123ee082c5b71214410993852dd00ef" [label=""];
  "sha256:228bbfbfae8abf14677d043a25c85805f123ee082c5b71214410993852dd00ef" -> "sha256:2cfc85bbcb8c60fc09a2627552fb356a968b98c6397a7e0b190f46a5329df8ca" [label=""];
  "sha256:2cfc85bbcb8c60fc09a2627552fb356a968b98c6397a7e0b190f46a5329df8ca" -> "sha256:5e79e0e3c152fb0a0b71984f4aeb7c74fe67208b8288e76e69a774b02a522656" [label=""];
  "sha256:566205e38bf1a4f59626350d0cda8cb3161d21d062bde7c9505459fa7211adc3" -> "sha256:5e79e0e3c152fb0a0b71984f4aeb7c74fe67208b8288e76e69a774b02a522656" [label=""];
  "sha256:5e79e0e3c152fb0a0b71984f4aeb7c74fe67208b8288e76e69a774b02a522656" -> "sha256:1dca63206dbabb41742464b555ac39e74097a98d967c3a327dbcbd66981c53e1" [label=""];
  "sha256:1dca63206dbabb41742464b555ac39e74097a98d967c3a327dbcbd66981c53e1" -> "sha256:4833902bb81d897eb5582128c22dbddb8a0da4cfc471130ec0c6459e8ec46789" [label=""];
}

