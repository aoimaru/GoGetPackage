[app/sources/218183901.Dockerfile]
digraph {
  "sha256:ae181ae28a787ea4d8bfaeb1bdd81c09689b32a9f396ada8a0fc83af2556a502" [label="docker-image://docker.io/confluentinc/cp-base:latest" shape="ellipse"];
  "sha256:9582882e945466fc50da0ef839071d5720ea68bdf9bdfff6dba9acb1ff795951" [label="/bin/sh -c echo \"===> Installing ${COMPONENT}...\"     && apt-get update && apt-get install -y confluent-${COMPONENT}=${CONFLUENT_VERSION}${CONFLUENT_PLATFORM_LABEL}-${CONFLUENT_DEB_VERSION}         && echo \"===> Cleaning up ...\"      && apt-get clean && rm -rf /tmp/* /var/lib/apt/lists/*         && echo \"===> Setting up ${COMPONENT} dirs\"     && mkdir -p \"${CONTROL_CENTER_DATA_DIR}\"     && chmod -R ag+w \"${CONTROL_CENTER_CONFIG_DIR}\" \"${CONTROL_CENTER_DATA_DIR}\"" shape="box"];
  "sha256:a8e5d2df9fddadbce347dc1407c4f8bcae4c4551c3b31ca7872903889918f470" [label="local://context" shape="ellipse"];
  "sha256:4fa1d28be1cff9c84ee3f37332c8d4c4c5bc4db1e300300a804029984b48c8b0" [label="copy{src=/include/etc/confluent/docker, dest=/etc/confluent/docker}" shape="note"];
  "sha256:84f23371cd859d74a453a51156e80f0e3bbdc1547d82e679832ec15caa4dcc15" [label="sha256:84f23371cd859d74a453a51156e80f0e3bbdc1547d82e679832ec15caa4dcc15" shape="plaintext"];
  "sha256:ae181ae28a787ea4d8bfaeb1bdd81c09689b32a9f396ada8a0fc83af2556a502" -> "sha256:9582882e945466fc50da0ef839071d5720ea68bdf9bdfff6dba9acb1ff795951" [label=""];
  "sha256:9582882e945466fc50da0ef839071d5720ea68bdf9bdfff6dba9acb1ff795951" -> "sha256:4fa1d28be1cff9c84ee3f37332c8d4c4c5bc4db1e300300a804029984b48c8b0" [label=""];
  "sha256:a8e5d2df9fddadbce347dc1407c4f8bcae4c4551c3b31ca7872903889918f470" -> "sha256:4fa1d28be1cff9c84ee3f37332c8d4c4c5bc4db1e300300a804029984b48c8b0" [label=""];
  "sha256:4fa1d28be1cff9c84ee3f37332c8d4c4c5bc4db1e300300a804029984b48c8b0" -> "sha256:84f23371cd859d74a453a51156e80f0e3bbdc1547d82e679832ec15caa4dcc15" [label=""];
}

