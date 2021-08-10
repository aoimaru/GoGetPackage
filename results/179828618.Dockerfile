[app/sources/179828618.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:c724691fe4eb2f03fae7e94198e40e7022d8609b4dc18e5562cc6b90839e7605" [label="/bin/sh -c adduser -D -h \"${GERRIT_HOME}\" -g \"Gerrit User\" -s /sbin/nologin \"${GERRIT_USER}\"" shape="box"];
  "sha256:7a6b4a839f5c5b96e65f21f166e5f003f914c614ed52444b1bad8a2b8ac469d5" [label="/bin/sh -c set -x     && apk add --update --no-cache git openssh-client openssl bash perl perl-cgi git-gitweb curl su-exec procmail" shape="box"];
  "sha256:32f27c50d06a2d0cd235749fc087ee6b5dfbf6f358a4f11188f15e87b782a251" [label="/bin/sh -c mkdir /docker-entrypoint-init.d" shape="box"];
  "sha256:2ea9045789f83c1644309ba99ddf1642d63ac0f3617fb7cc0d13f868cea3de3a" [label="/bin/sh -c curl -fSsL https://gerrit-releases.storage.googleapis.com/gerrit-${GERRIT_VERSION}.war -o $GERRIT_WAR" shape="box"];
  "sha256:d2019c36e94d9dc63ad1373c3c39f5f680ebf63ca3021ce14419ff350037d0bb" [label="/bin/sh -c curl -fSsL     ${GERRITFORGE_URL}/job/plugin-events-log-${PLUGIN_VERSION}/${GERRITFORGE_ARTIFACT_DIR}/events-log/events-log.jar     -o ${GERRIT_HOME}/events-log.jar" shape="box"];
  "sha256:37726cdb349aaf921217c6f740e2175009a19c1fa95f8c8326b7b1b34df4402c" [label="/bin/sh -c curl -fSsL     ${GERRITFORGE_URL}/job/plugin-oauth-${PLUGIN_VERSION}/${GERRITFORGE_ARTIFACT_DIR}/oauth/oauth.jar     -o ${GERRIT_HOME}/oauth.jar" shape="box"];
  "sha256:fc3a8c3ec5289e61614baa21d5baecf0715a6d673127270d5119ce77245fc23e" [label="local://context" shape="ellipse"];
  "sha256:a799d7895a2b47fe60333e092457cee5cf14251f27efcf8212b32661075fd6e5" [label="copy{src=/gerrit-entrypoint.sh, dest=/}" shape="note"];
  "sha256:1ac7e21e77804fce9b8fe4e81c51dada084f85970d902e8277c23ac7227718fe" [label="copy{src=/gerrit-start.sh, dest=/}" shape="note"];
  "sha256:eaacb08fe5bab7dee4bd6a52760bb8e1a97ee45c7ed3b86a848f6482b6b28fb5" [label="/bin/sh -c chmod +x /gerrit*.sh" shape="box"];
  "sha256:804138c06d4cccf3c80e433e1bd2e9674a00f70db8f2c25fb1df79fc59d40922" [label="/bin/sh -c su-exec ${GERRIT_USER} mkdir -p $GERRIT_SITE" shape="box"];
  "sha256:289ae9d8525a1a15c96fd59579cfbfad9408b2ea4c630cb55a16ad454e495847" [label="sha256:289ae9d8525a1a15c96fd59579cfbfad9408b2ea4c630cb55a16ad454e495847" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:c724691fe4eb2f03fae7e94198e40e7022d8609b4dc18e5562cc6b90839e7605" [label=""];
  "sha256:c724691fe4eb2f03fae7e94198e40e7022d8609b4dc18e5562cc6b90839e7605" -> "sha256:7a6b4a839f5c5b96e65f21f166e5f003f914c614ed52444b1bad8a2b8ac469d5" [label=""];
  "sha256:7a6b4a839f5c5b96e65f21f166e5f003f914c614ed52444b1bad8a2b8ac469d5" -> "sha256:32f27c50d06a2d0cd235749fc087ee6b5dfbf6f358a4f11188f15e87b782a251" [label=""];
  "sha256:32f27c50d06a2d0cd235749fc087ee6b5dfbf6f358a4f11188f15e87b782a251" -> "sha256:2ea9045789f83c1644309ba99ddf1642d63ac0f3617fb7cc0d13f868cea3de3a" [label=""];
  "sha256:2ea9045789f83c1644309ba99ddf1642d63ac0f3617fb7cc0d13f868cea3de3a" -> "sha256:d2019c36e94d9dc63ad1373c3c39f5f680ebf63ca3021ce14419ff350037d0bb" [label=""];
  "sha256:d2019c36e94d9dc63ad1373c3c39f5f680ebf63ca3021ce14419ff350037d0bb" -> "sha256:37726cdb349aaf921217c6f740e2175009a19c1fa95f8c8326b7b1b34df4402c" [label=""];
  "sha256:37726cdb349aaf921217c6f740e2175009a19c1fa95f8c8326b7b1b34df4402c" -> "sha256:a799d7895a2b47fe60333e092457cee5cf14251f27efcf8212b32661075fd6e5" [label=""];
  "sha256:fc3a8c3ec5289e61614baa21d5baecf0715a6d673127270d5119ce77245fc23e" -> "sha256:a799d7895a2b47fe60333e092457cee5cf14251f27efcf8212b32661075fd6e5" [label=""];
  "sha256:a799d7895a2b47fe60333e092457cee5cf14251f27efcf8212b32661075fd6e5" -> "sha256:1ac7e21e77804fce9b8fe4e81c51dada084f85970d902e8277c23ac7227718fe" [label=""];
  "sha256:fc3a8c3ec5289e61614baa21d5baecf0715a6d673127270d5119ce77245fc23e" -> "sha256:1ac7e21e77804fce9b8fe4e81c51dada084f85970d902e8277c23ac7227718fe" [label=""];
  "sha256:1ac7e21e77804fce9b8fe4e81c51dada084f85970d902e8277c23ac7227718fe" -> "sha256:eaacb08fe5bab7dee4bd6a52760bb8e1a97ee45c7ed3b86a848f6482b6b28fb5" [label=""];
  "sha256:eaacb08fe5bab7dee4bd6a52760bb8e1a97ee45c7ed3b86a848f6482b6b28fb5" -> "sha256:804138c06d4cccf3c80e433e1bd2e9674a00f70db8f2c25fb1df79fc59d40922" [label=""];
  "sha256:804138c06d4cccf3c80e433e1bd2e9674a00f70db8f2c25fb1df79fc59d40922" -> "sha256:289ae9d8525a1a15c96fd59579cfbfad9408b2ea4c630cb55a16ad454e495847" [label=""];
}

