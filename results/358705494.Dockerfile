[app/sources/358705494.Dockerfile]
digraph {
  "sha256:1bf6a0581de5e24c63a5541e9c5d95c726bdc251c520006e636718b4b79f4bd9" [label="local://context" shape="ellipse"];
  "sha256:75fb08fa4776a74d4f73f95f89013d316d886dcda9351baf4bec5c3b8918fc74" [label="docker-image://docker.io/library/openjdk:8-jdk-slim" shape="ellipse"];
  "sha256:ba95aed11bd7464b8913289b5eeff4ce8aed1df43fb7c2e23ab9eea1374fe5cf" [label="/bin/sh -c apt-get -y update && apt-get -y install     netcat     python     unzip     curl     vim     supervisor &&     apt-get clean all &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1deec1131fb7b6f7c2c5acd6b3e0d19a6fa4e484140d421413d7a081ac576e97" [label="copy{src=/artifacts, dest=/heron}" shape="note"];
  "sha256:7bbc321477b2af58ff3c145fc4d916ffa4ec17e0dcae995f8d7690f0d9f1f381" [label="mkdir{path=/heron}" shape="note"];
  "sha256:8b5c1679333eff9216a85b82251cbee9172a675b142d2794b91b3a66116eeb6a" [label="/bin/sh -c /heron/heron-install.sh &&     rm -rf /heron/heron-install.sh &&     rm -rf /opt/heron/heron-core/lib/scheduler/heron-local-scheduler.jar &&     rm -rf /opt/heron/heron-core/lib/scheduler/heron-mesos-scheduler.jar &&     rm -rf /opt/heron/heron-core/lib/scheduler/heron-slurm-scheduler.jar" shape="box"];
  "sha256:fbdec80a8ae828c642a8cd34a64c95b9d32a5f740369d0f5af4d4f15c8d052e3" [label="/bin/sh -c ln -s /usr/local/heron/dist/heron-core /heron     && mkdir -p /heron/heron-tools     && ln -s /usr/local/heron/bin /heron/heron-tools     && ln -s /usr/local/heron/conf /heron/heron-tools     && ln -s /usr/local/heron/dist /heron/heron-tools     && ln -s /usr/local/heron/lib /heron/heron-tools     && ln -s /usr/local/heron/release.yaml /heron/heron-tools     && ln -s /usr/local/heron/examples /heron     && ln -s /usr/local/heron/release.yaml /heron" shape="box"];
  "sha256:faf805d2a39b2ce0ad39b5907aa81599083f8df9fec318ccb065a6f6e56c456e" [label="/bin/sh -c curl -O \"https://archive.apache.org/dist/zookeeper/$ZK_DIST/$ZK_DIST.tar.gz\"     && tar -xzf /heron/$ZK_DIST.tar.gz -C /opt     && rm -r /heron/$ZK_DIST.tar.gz     && mv /opt/$ZK_DIST /opt/zookeeper     && rm -rf /opt/zookeeper/CHANGES.txt     /opt/zookeeper/README.txt     /opt/zookeeper/NOTICE.txt     /opt/zookeeper/CHANGES.txt     /opt/zookeeper/README_packaging.txt     /opt/zookeeper/build.xml     /opt/zookeeper/config     /opt/zookeeper/contrib     /opt/zookeeper/dist-maven     /opt/zookeeper/docs     /opt/zookeeper/ivy.xml     /opt/zookeeper/ivysettings.xml     /opt/zookeeper/recipes     /opt/zookeeper/src     /opt/zookeeper/$ZK_DIST.jar.asc     /opt/zookeeper/$ZK_DIST.jar.md5     /opt/zookeeper/$ZK_DIST.jar.sha1" shape="box"];
  "sha256:edba8b20fc7e5c10116d3e7b3d86147d3ae28ce6cc90f312fa9df9715333d20f" [label="copy{src=/dist/conf/zookeeper.conf, dest=/opt/zookeeper/conf/zookeeper.conf}" shape="note"];
  "sha256:4ed57900766ce66f44aacd36ea8ab5cc53f6f84f57193d23da3ca4281f48068c" [label="copy{src=/dist/conf/sandbox.conf, dest=/etc/supervisor/conf.d/}" shape="note"];
  "sha256:4811cd52a2c4ed5004e9b9ccf0de8578b09a75aa42be87390d478a4da5dcecd5" [label="/bin/sh -c mkdir -p /opt/zookeeper/scripts" shape="box"];
  "sha256:fa2f262898712c6f410c68c67815654509a967c5636f8a1698a860f8ad7ff154" [label="copy{src=/dist/scripts, dest=/opt/zookeeper/scripts}" shape="note"];
  "sha256:16726412ad01b42254d1c56f0749eff04225fb40476e179b4de41ca56c2a6201" [label="/bin/sh -c chmod +x /opt/zookeeper/scripts/generate-zookeeper-config.sh     && chmod +x /opt/zookeeper/scripts/zookeeper-ruok.sh     && chmod +x /opt/zookeeper/scripts/start-zookeeper.sh" shape="box"];
  "sha256:f1ab23da245905423bc335f211f8cf6595013b76f9e94e03fcd92b1870827890" [label="sha256:f1ab23da245905423bc335f211f8cf6595013b76f9e94e03fcd92b1870827890" shape="plaintext"];
  "sha256:75fb08fa4776a74d4f73f95f89013d316d886dcda9351baf4bec5c3b8918fc74" -> "sha256:ba95aed11bd7464b8913289b5eeff4ce8aed1df43fb7c2e23ab9eea1374fe5cf" [label=""];
  "sha256:ba95aed11bd7464b8913289b5eeff4ce8aed1df43fb7c2e23ab9eea1374fe5cf" -> "sha256:1deec1131fb7b6f7c2c5acd6b3e0d19a6fa4e484140d421413d7a081ac576e97" [label=""];
  "sha256:1bf6a0581de5e24c63a5541e9c5d95c726bdc251c520006e636718b4b79f4bd9" -> "sha256:1deec1131fb7b6f7c2c5acd6b3e0d19a6fa4e484140d421413d7a081ac576e97" [label=""];
  "sha256:1deec1131fb7b6f7c2c5acd6b3e0d19a6fa4e484140d421413d7a081ac576e97" -> "sha256:7bbc321477b2af58ff3c145fc4d916ffa4ec17e0dcae995f8d7690f0d9f1f381" [label=""];
  "sha256:7bbc321477b2af58ff3c145fc4d916ffa4ec17e0dcae995f8d7690f0d9f1f381" -> "sha256:8b5c1679333eff9216a85b82251cbee9172a675b142d2794b91b3a66116eeb6a" [label=""];
  "sha256:8b5c1679333eff9216a85b82251cbee9172a675b142d2794b91b3a66116eeb6a" -> "sha256:fbdec80a8ae828c642a8cd34a64c95b9d32a5f740369d0f5af4d4f15c8d052e3" [label=""];
  "sha256:fbdec80a8ae828c642a8cd34a64c95b9d32a5f740369d0f5af4d4f15c8d052e3" -> "sha256:faf805d2a39b2ce0ad39b5907aa81599083f8df9fec318ccb065a6f6e56c456e" [label=""];
  "sha256:faf805d2a39b2ce0ad39b5907aa81599083f8df9fec318ccb065a6f6e56c456e" -> "sha256:edba8b20fc7e5c10116d3e7b3d86147d3ae28ce6cc90f312fa9df9715333d20f" [label=""];
  "sha256:1bf6a0581de5e24c63a5541e9c5d95c726bdc251c520006e636718b4b79f4bd9" -> "sha256:edba8b20fc7e5c10116d3e7b3d86147d3ae28ce6cc90f312fa9df9715333d20f" [label=""];
  "sha256:edba8b20fc7e5c10116d3e7b3d86147d3ae28ce6cc90f312fa9df9715333d20f" -> "sha256:4ed57900766ce66f44aacd36ea8ab5cc53f6f84f57193d23da3ca4281f48068c" [label=""];
  "sha256:1bf6a0581de5e24c63a5541e9c5d95c726bdc251c520006e636718b4b79f4bd9" -> "sha256:4ed57900766ce66f44aacd36ea8ab5cc53f6f84f57193d23da3ca4281f48068c" [label=""];
  "sha256:4ed57900766ce66f44aacd36ea8ab5cc53f6f84f57193d23da3ca4281f48068c" -> "sha256:4811cd52a2c4ed5004e9b9ccf0de8578b09a75aa42be87390d478a4da5dcecd5" [label=""];
  "sha256:4811cd52a2c4ed5004e9b9ccf0de8578b09a75aa42be87390d478a4da5dcecd5" -> "sha256:fa2f262898712c6f410c68c67815654509a967c5636f8a1698a860f8ad7ff154" [label=""];
  "sha256:1bf6a0581de5e24c63a5541e9c5d95c726bdc251c520006e636718b4b79f4bd9" -> "sha256:fa2f262898712c6f410c68c67815654509a967c5636f8a1698a860f8ad7ff154" [label=""];
  "sha256:fa2f262898712c6f410c68c67815654509a967c5636f8a1698a860f8ad7ff154" -> "sha256:16726412ad01b42254d1c56f0749eff04225fb40476e179b4de41ca56c2a6201" [label=""];
  "sha256:16726412ad01b42254d1c56f0749eff04225fb40476e179b4de41ca56c2a6201" -> "sha256:f1ab23da245905423bc335f211f8cf6595013b76f9e94e03fcd92b1870827890" [label=""];
}

