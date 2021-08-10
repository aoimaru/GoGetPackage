[app/sources/256264039.Dockerfile]
digraph {
  "sha256:aac4c0ec49f36d80eaad9f333791eca092160d232c3345188e4e0c7f0e4734bb" [label="docker-image://registry.access.redhat.com/rhel7/rhel:latest" shape="ellipse"];
  "sha256:a8e25efbfd8d578d8e0ec5a986143043cf592d0ec074f4663c26112e15904ab8" [label="local://context" shape="ellipse"];
  "sha256:335cf05bfc9af983fa65d46f2ecca8fafe8c96ad90b9a7366183f75cb153649f" [label="copy{src=/help.1, dest=/},copy{src=/uid_entrypoint, dest=/}" shape="note"];
  "sha256:000a273e4fe253f4ef9a2244bed16d0c7dc241e97fa7365fde8208b2599cd4f4" [label="copy{src=/licenses, dest=/licenses}" shape="note"];
  "sha256:694e2d24fc1188b212b35272f3d2fa4422c6f1dc6d35d1997b4cedac06d575c5" [label="/bin/sh -c set -x &&     yum clean all &&     REPOLIST=rhel-7-server-rpms,rhel-7-server-optional-rpms,rhel-7-server-thirdparty-oracle-java-rpms     INSTALL_PKGS=\"tar java-1.8.0-oracle-devel\" &&     yum -y update-minimal --disablerepo \"*\" --enablerepo ${REPOLIST} --setopt=tsflags=nodocs       --security --sec-severity=Important --sec-severity=Critical &&     yum -y install --disablerepo \"*\" --enablerepo ${REPOLIST} --setopt=tsflags=nodocs ${INSTALL_PKGS} &&     yum clean all" shape="box"];
  "sha256:368a8a46c9d5c1507abcfabc7e719b066b4417d80f772c0a26b9877dea8657f8" [label="/bin/sh -c mkdir -p ${NEXUS_HOME} &&     curl --fail --silent --location --retry 3       https://download.sonatype.com/nexus/3/nexus-${NEXUS_VERSION}-unix.tar.gz       | gunzip       | tar x -C ${NEXUS_HOME} --strip-components=1 nexus-${NEXUS_VERSION} &&     chown -R root:root ${NEXUS_HOME} &&         sed       -e '/^nexus-context/ s:$:${NEXUS_CONTEXT}:'       -i ${NEXUS_HOME}/etc/nexus-default.properties &&         useradd -l -u ${USER_UID} -r -g 0 -m -d ${NEXUS_DATA} -s /sbin/no-login             -c \"${USER_NAME} application user\" ${USER_NAME} &&             mkdir -p ${NEXUS_DATA}/etc ${NEXUS_DATA}/log ${NEXUS_DATA}/tmp ${SONATYPE_WORK} &&             ln -s ${NEXUS_DATA} ${SONATYPE_WORK}/nexus3 &&             chown -R ${USER_NAME}:0 ${NEXUS_DATA} &&             chmod -R g+rw ${NEXUS_DATA} /etc/passwd &&             chmod ug+x /uid_entrypoint &&             find ${NEXUS_DATA} -type d -exec chmod g+x {} +" shape="box"];
  "sha256:ca4cec091fda1a701e9e0c93529f1a93838f7b6b9d94ab762399b642beba1e9d" [label="/bin/sh -c sed \"s@${USER_NAME}:x:${USER_UID}:@${USER_NAME}:x:\\${USER_ID}:@g\" /etc/passwd > /etc/passwd.template" shape="box"];
  "sha256:c50a25fd75d78cd0c54a1e6c941da19e695a85a64956c518d1e1a0cffc344578" [label="mkdir{path=/opt/sonatype/nexus}" shape="note"];
  "sha256:797f71688965cb22c5caad5ead3996942d2e7e3302b71302d6678028051d408b" [label="sha256:797f71688965cb22c5caad5ead3996942d2e7e3302b71302d6678028051d408b" shape="plaintext"];
  "sha256:aac4c0ec49f36d80eaad9f333791eca092160d232c3345188e4e0c7f0e4734bb" -> "sha256:335cf05bfc9af983fa65d46f2ecca8fafe8c96ad90b9a7366183f75cb153649f" [label=""];
  "sha256:a8e25efbfd8d578d8e0ec5a986143043cf592d0ec074f4663c26112e15904ab8" -> "sha256:335cf05bfc9af983fa65d46f2ecca8fafe8c96ad90b9a7366183f75cb153649f" [label=""];
  "sha256:335cf05bfc9af983fa65d46f2ecca8fafe8c96ad90b9a7366183f75cb153649f" -> "sha256:000a273e4fe253f4ef9a2244bed16d0c7dc241e97fa7365fde8208b2599cd4f4" [label=""];
  "sha256:a8e25efbfd8d578d8e0ec5a986143043cf592d0ec074f4663c26112e15904ab8" -> "sha256:000a273e4fe253f4ef9a2244bed16d0c7dc241e97fa7365fde8208b2599cd4f4" [label=""];
  "sha256:000a273e4fe253f4ef9a2244bed16d0c7dc241e97fa7365fde8208b2599cd4f4" -> "sha256:694e2d24fc1188b212b35272f3d2fa4422c6f1dc6d35d1997b4cedac06d575c5" [label=""];
  "sha256:694e2d24fc1188b212b35272f3d2fa4422c6f1dc6d35d1997b4cedac06d575c5" -> "sha256:368a8a46c9d5c1507abcfabc7e719b066b4417d80f772c0a26b9877dea8657f8" [label=""];
  "sha256:368a8a46c9d5c1507abcfabc7e719b066b4417d80f772c0a26b9877dea8657f8" -> "sha256:ca4cec091fda1a701e9e0c93529f1a93838f7b6b9d94ab762399b642beba1e9d" [label=""];
  "sha256:ca4cec091fda1a701e9e0c93529f1a93838f7b6b9d94ab762399b642beba1e9d" -> "sha256:c50a25fd75d78cd0c54a1e6c941da19e695a85a64956c518d1e1a0cffc344578" [label=""];
  "sha256:c50a25fd75d78cd0c54a1e6c941da19e695a85a64956c518d1e1a0cffc344578" -> "sha256:797f71688965cb22c5caad5ead3996942d2e7e3302b71302d6678028051d408b" [label=""];
}

