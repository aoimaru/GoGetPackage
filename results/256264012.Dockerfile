[app/sources/256264012.Dockerfile]
digraph {
  "sha256:aac4c0ec49f36d80eaad9f333791eca092160d232c3345188e4e0c7f0e4734bb" [label="docker-image://registry.access.redhat.com/rhel7/rhel:latest" shape="ellipse"];
  "sha256:383bba5b47756b9a56a84f09774648e702c972382cd478618013eeae569e6035" [label="local://context" shape="ellipse"];
  "sha256:faa474cc56d73f144dcf06bcb76b16acef670eb7dadb96413f329142728d115e" [label="copy{src=/help.1, dest=/},copy{src=/uid_entrypoint, dest=/}" shape="note"];
  "sha256:b5287495b038e71b07a38eab7e223585c2e4130b0c383767b7b65ff03bb4076b" [label="/bin/sh -c set -x &&     yum clean all &&     REPOLIST=rhel-7-server-rpms,rhel-7-server-optional-rpms,rhel-7-server-thirdparty-oracle-java-rpms     INSTALL_PKGS=\"tar java-1.8.0-oracle-devel\" &&     yum -y update-minimal --disablerepo \"*\" --enablerepo ${REPOLIST} --setopt=tsflags=nodocs       --security --sec-severity=Important --sec-severity=Critical &&     yum -y install --disablerepo \"*\" --enablerepo ${REPOLIST} --setopt=tsflags=nodocs ${INSTALL_PKGS} &&     yum clean all" shape="box"];
  "sha256:1591f3cc8e2c9580f00088b9a44e93edbbe9e15576d24529e3657f5fd3de0aeb" [label="/bin/sh -c mkdir -p ${NEXUS_HOME} &&     curl --fail --silent --location --retry 3       https://download.sonatype.com/nexus/3/nexus-${NEXUS_VERSION}-unix.tar.gz       | gunzip       | tar x -C ${NEXUS_HOME} --strip-components=1 nexus-${NEXUS_VERSION} &&     chown -R root:root ${NEXUS_HOME} &&         sed       -e '/^nexus-context/ s:$:${NEXUS_CONTEXT}:'       -i ${NEXUS_HOME}/etc/nexus-default.properties &&         useradd -l -u ${USER_UID} -r -g 0 -m -d ${NEXUS_DATA} -s /sbin/no-login             -c \"${USER_NAME} application user\" ${USER_NAME} &&             mkdir -p ${NEXUS_DATA}/etc ${NEXUS_DATA}/log ${NEXUS_DATA}/tmp ${SONATYPE_WORK} &&             ln -s ${NEXUS_DATA} ${SONATYPE_WORK}/nexus3 &&             chown -R ${USER_NAME}:0 ${NEXUS_DATA} &&             chmod -R g+rw ${NEXUS_DATA} /etc/passwd &&             chmod ug+x /uid_entrypoint &&             find ${NEXUS_DATA} -type d -exec chmod g+x {} +" shape="box"];
  "sha256:b98dfa9fd26cc546d09c0726db69ab840f9fd21b253c0e092569d2653db712ad" [label="/bin/sh -c sed \"s@${USER_NAME}:x:${USER_UID}:@${USER_NAME}:x:\\${USER_ID}:@g\" /etc/passwd > /etc/passwd.template" shape="box"];
  "sha256:cd650be2320c306205e225c442764cd51b71f204cfaecce21ccc487363d5ea7a" [label="mkdir{path=/opt/sonatype/nexus}" shape="note"];
  "sha256:37b4eb4db3bca4c582c804810e6c9c32d05a32fc2a14c7ace7909c835c434fa7" [label="sha256:37b4eb4db3bca4c582c804810e6c9c32d05a32fc2a14c7ace7909c835c434fa7" shape="plaintext"];
  "sha256:aac4c0ec49f36d80eaad9f333791eca092160d232c3345188e4e0c7f0e4734bb" -> "sha256:faa474cc56d73f144dcf06bcb76b16acef670eb7dadb96413f329142728d115e" [label=""];
  "sha256:383bba5b47756b9a56a84f09774648e702c972382cd478618013eeae569e6035" -> "sha256:faa474cc56d73f144dcf06bcb76b16acef670eb7dadb96413f329142728d115e" [label=""];
  "sha256:faa474cc56d73f144dcf06bcb76b16acef670eb7dadb96413f329142728d115e" -> "sha256:b5287495b038e71b07a38eab7e223585c2e4130b0c383767b7b65ff03bb4076b" [label=""];
  "sha256:b5287495b038e71b07a38eab7e223585c2e4130b0c383767b7b65ff03bb4076b" -> "sha256:1591f3cc8e2c9580f00088b9a44e93edbbe9e15576d24529e3657f5fd3de0aeb" [label=""];
  "sha256:1591f3cc8e2c9580f00088b9a44e93edbbe9e15576d24529e3657f5fd3de0aeb" -> "sha256:b98dfa9fd26cc546d09c0726db69ab840f9fd21b253c0e092569d2653db712ad" [label=""];
  "sha256:b98dfa9fd26cc546d09c0726db69ab840f9fd21b253c0e092569d2653db712ad" -> "sha256:cd650be2320c306205e225c442764cd51b71f204cfaecce21ccc487363d5ea7a" [label=""];
  "sha256:cd650be2320c306205e225c442764cd51b71f204cfaecce21ccc487363d5ea7a" -> "sha256:37b4eb4db3bca4c582c804810e6c9c32d05a32fc2a14c7ace7909c835c434fa7" [label=""];
}

