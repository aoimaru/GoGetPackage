[app/sources/287516483.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:774391d4799ba1c6b218003f7b134f218a520b20a7dabe045a6c4bc25ac5a6a4" [label="local://context" shape="ellipse"];
  "sha256:3eca0bfd54be5c1e0d0cc724854ce53eed55f8f553266da60fec902758be3011" [label="copy{src=/cachebuster, dest=/tmp}" shape="note"];
  "sha256:3b085bbd42aa5e1e7cdb7980f5ff6401b44b580f5e04235f28d720019e6c9c59" [label="/bin/sh -c addgroup -g ${UID} ${OPBOT_USER} &&     adduser -u ${UID} -S -G ${OPBOT_USER} -s /bin/bash -h ${OPBOT_HOME_DIR} ${OPBOT_USER} &&     apk update &&     apk add --no-cache bash coreutils git go libc-dev make wget &&     mkdir -p \"${OPBOT_GIT_ROOT}\" &&     git clone \"${GITHUB_URL}\" \"${OPBOT_GIT_ROOT}\" &&     cd \"${OPBOT_GIT_ROOT}\" &&     ls -ltr &&     cd src &&     go get -v &&     cd .. &&     make &&     mv \"${OPBOT_PROJECT}\" /usr/bin &&     cd /tmp &&     rm -rf \"${GOPATH}\" &&     apk add ca-certificates &&     apk del coreutils git go libc-dev make wget &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:c31c42240a6d1ea2c6df97c825f0a3ab90bf1071c75ccadc4c3c15c19c8145be" [label="sha256:c31c42240a6d1ea2c6df97c825f0a3ab90bf1071c75ccadc4c3c15c19c8145be" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:3eca0bfd54be5c1e0d0cc724854ce53eed55f8f553266da60fec902758be3011" [label=""];
  "sha256:774391d4799ba1c6b218003f7b134f218a520b20a7dabe045a6c4bc25ac5a6a4" -> "sha256:3eca0bfd54be5c1e0d0cc724854ce53eed55f8f553266da60fec902758be3011" [label=""];
  "sha256:3eca0bfd54be5c1e0d0cc724854ce53eed55f8f553266da60fec902758be3011" -> "sha256:3b085bbd42aa5e1e7cdb7980f5ff6401b44b580f5e04235f28d720019e6c9c59" [label=""];
  "sha256:3b085bbd42aa5e1e7cdb7980f5ff6401b44b580f5e04235f28d720019e6c9c59" -> "sha256:c31c42240a6d1ea2c6df97c825f0a3ab90bf1071c75ccadc4c3c15c19c8145be" [label=""];
}

