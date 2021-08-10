[app/sources/177318901.Dockerfile]
digraph {
  "sha256:3bc780459d5c6f5f679b044eb94450ecd26c81436b6ca363f54cf2b292081bab" [label="docker-image://docker.io/oracle/serverjre:8" shape="ellipse"];
  "sha256:8539a4546b18f84b415accfb9b77dbb6a5a0d76ec572ade75753b71ad21d2c0d" [label="local://context" shape="ellipse"];
  "sha256:866ca61cd145ca4fd9886ca2d4b8bfaaf327c786e72e5eb0a3794f7282602ca1" [label="copy{src=/ords*.zip, dest=/opt/oracle/ords/},copy{src=/ords_params.properties.tmpl, dest=/opt/oracle/ords/},copy{src=/standalone.properties.tmpl, dest=/opt/oracle/ords/},copy{src=/runOrds.sh, dest=/opt/oracle/ords/}" shape="note"];
  "sha256:3ac1b363567e6a58fcca96baf1c012d10198346345cfc9dd6b3f5cd7fee1163c" [label="/bin/sh -c mkdir -p  $ORDS_HOME/doc_root &&     chmod ug+x $ORDS_HOME/*.sh &&     groupadd -g 54322 dba &&     useradd -u 54321 -d /home/oracle -g dba -m -s /bin/bash oracle &&     cd $ORDS_HOME &&     jar -xf $INSTALL_FILE &&     rm $INSTALL_FILE &&     mkdir -p $ORDS_HOME/config/ords &&     java -jar $ORDS_HOME/ords.war configdir $ORDS_HOME/config &&     chown -R oracle:dba $ORDS_HOME" shape="box"];
  "sha256:f2b021273bb1e905f1d5501d68c4b49b5f53081b4f22105fc0e8c170f9e89226" [label="mkdir{path=/home/oracle}" shape="note"];
  "sha256:1d5248dbe126bbcafa2e5e5d6cb0e9b0d012d72fd8ce7e54cf54f2ed63a8073c" [label="sha256:1d5248dbe126bbcafa2e5e5d6cb0e9b0d012d72fd8ce7e54cf54f2ed63a8073c" shape="plaintext"];
  "sha256:3bc780459d5c6f5f679b044eb94450ecd26c81436b6ca363f54cf2b292081bab" -> "sha256:866ca61cd145ca4fd9886ca2d4b8bfaaf327c786e72e5eb0a3794f7282602ca1" [label=""];
  "sha256:8539a4546b18f84b415accfb9b77dbb6a5a0d76ec572ade75753b71ad21d2c0d" -> "sha256:866ca61cd145ca4fd9886ca2d4b8bfaaf327c786e72e5eb0a3794f7282602ca1" [label=""];
  "sha256:866ca61cd145ca4fd9886ca2d4b8bfaaf327c786e72e5eb0a3794f7282602ca1" -> "sha256:3ac1b363567e6a58fcca96baf1c012d10198346345cfc9dd6b3f5cd7fee1163c" [label=""];
  "sha256:3ac1b363567e6a58fcca96baf1c012d10198346345cfc9dd6b3f5cd7fee1163c" -> "sha256:f2b021273bb1e905f1d5501d68c4b49b5f53081b4f22105fc0e8c170f9e89226" [label=""];
  "sha256:f2b021273bb1e905f1d5501d68c4b49b5f53081b4f22105fc0e8c170f9e89226" -> "sha256:1d5248dbe126bbcafa2e5e5d6cb0e9b0d012d72fd8ce7e54cf54f2ed63a8073c" [label=""];
}

