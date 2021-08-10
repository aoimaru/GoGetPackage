[app/sources/177318239.Dockerfile]
digraph {
  "sha256:95965eee285de22690e1255b732335a72b6ff400c3ee7526d4ce559037d17db1" [label="local://context" shape="ellipse"];
  "sha256:6a89099e8ead8235d9d0d3111777fe69ca24324cffe72e9a2d0c9d6c6e67922c" [label="docker-image://docker.io/library/oraclelinux:7-slim" shape="ellipse"];
  "sha256:4643319c507519f95d75602e3d713d864084e6189e03074f9d061b13696764c7" [label="copy{src=/LINUX.X64_180000_client.zip, dest=/opt/scripts/install/},copy{src=/setupLinuxEnv.sh, dest=/opt/scripts/install/},copy{src=/checkSpace.sh, dest=/opt/scripts/install/},copy{src=/, dest=/opt/scripts/install/},copy{src=/installDBBinaries.sh, dest=/opt/scripts/install/}" shape="note"];
  "sha256:5c08e3a769fb688af0688ebc2a604a53679b1a0bfffe3ca3d505e1a6b20aa583" [label="copy{src=/runOracle.sh, dest=/opt/scripts/startup/},copy{src=/cman.ora, dest=/opt/scripts/startup/},copy{src=/configCMAN.sh, dest=/opt/scripts/startup/},copy{src=/functions.sh, dest=/opt/scripts/startup/}" shape="note"];
  "sha256:4015e56726340adf36420a47253bae3a5ae7a8cd3f207b30d06cc0a189203488" [label="/bin/sh -c chmod 755 $INSTALL_DIR/install/*.sh &&     sync &&     $INSTALL_DIR/install/$CHECK_SPACE_FILE &&     $INSTALL_DIR/install/$SETUP_LINUX_FILE &&     $INSTALL_DIR/install/$DB_SETUP_FILE" shape="box"];
  "sha256:803ab9945de66f38ae9de043d1d7898e8382a380ae83d311620c22438229ae24" [label="/bin/sh -c $INSTALL_DIR/install/$INSTALL_DB_BINARIES_FILE EE" shape="box"];
  "sha256:5fc5cb9f547a07b2396fe231c3e4d8f3b97f9a7c8fa4e88b49e39627ae8c8bab" [label="/bin/sh -c $INVENTORY/orainstRoot.sh &&     $DB_HOME/root.sh &&     rm -rf $INSTALL_DIR/install &&     rm -f /etc/security/limits.d/oracle-database-preinstall-18c.conf &&     chown -R oracle:oinstall $SCRIPT_DIR &&     chmod 755 $SCRIPT_DIR/*.sh &&     chmod 666 $SCRIPT_DIR/*.ora &&     sync" shape="box"];
  "sha256:a19b56ef3b671f3add6b4995f7688f3b35dd86826e50375db2b675f3b5546abc" [label="mkdir{path=/home/oracle}" shape="note"];
  "sha256:e8f218cc8b9e584b1bac600e7c05e6b9d6705752d5500e3e92879a7c65f74bee" [label="sha256:e8f218cc8b9e584b1bac600e7c05e6b9d6705752d5500e3e92879a7c65f74bee" shape="plaintext"];
  "sha256:6a89099e8ead8235d9d0d3111777fe69ca24324cffe72e9a2d0c9d6c6e67922c" -> "sha256:4643319c507519f95d75602e3d713d864084e6189e03074f9d061b13696764c7" [label=""];
  "sha256:95965eee285de22690e1255b732335a72b6ff400c3ee7526d4ce559037d17db1" -> "sha256:4643319c507519f95d75602e3d713d864084e6189e03074f9d061b13696764c7" [label=""];
  "sha256:4643319c507519f95d75602e3d713d864084e6189e03074f9d061b13696764c7" -> "sha256:5c08e3a769fb688af0688ebc2a604a53679b1a0bfffe3ca3d505e1a6b20aa583" [label=""];
  "sha256:95965eee285de22690e1255b732335a72b6ff400c3ee7526d4ce559037d17db1" -> "sha256:5c08e3a769fb688af0688ebc2a604a53679b1a0bfffe3ca3d505e1a6b20aa583" [label=""];
  "sha256:5c08e3a769fb688af0688ebc2a604a53679b1a0bfffe3ca3d505e1a6b20aa583" -> "sha256:4015e56726340adf36420a47253bae3a5ae7a8cd3f207b30d06cc0a189203488" [label=""];
  "sha256:4015e56726340adf36420a47253bae3a5ae7a8cd3f207b30d06cc0a189203488" -> "sha256:803ab9945de66f38ae9de043d1d7898e8382a380ae83d311620c22438229ae24" [label=""];
  "sha256:803ab9945de66f38ae9de043d1d7898e8382a380ae83d311620c22438229ae24" -> "sha256:5fc5cb9f547a07b2396fe231c3e4d8f3b97f9a7c8fa4e88b49e39627ae8c8bab" [label=""];
  "sha256:5fc5cb9f547a07b2396fe231c3e4d8f3b97f9a7c8fa4e88b49e39627ae8c8bab" -> "sha256:a19b56ef3b671f3add6b4995f7688f3b35dd86826e50375db2b675f3b5546abc" [label=""];
  "sha256:a19b56ef3b671f3add6b4995f7688f3b35dd86826e50375db2b675f3b5546abc" -> "sha256:e8f218cc8b9e584b1bac600e7c05e6b9d6705752d5500e3e92879a7c65f74bee" [label=""];
}

