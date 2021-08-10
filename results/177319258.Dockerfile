[app/sources/177319258.Dockerfile]
digraph {
  "sha256:3bc780459d5c6f5f679b044eb94450ecd26c81436b6ca363f54cf2b292081bab" [label="docker-image://docker.io/oracle/serverjre:8" shape="ellipse"];
  "sha256:01aa7ba6e7e7acae1d6d4d4bd273a48e505b9c8162aa0f4fffa5ad3db1617c92" [label="/bin/sh -c mkdir -p /u01 &&     chmod a+xr /u01 &&     useradd -b /u01 -d /u01/oracle -m -s /bin/bash oracle" shape="box"];
  "sha256:1086a2e6d726b99f90dafeb14dc43a3a0c1fc2bb9108f4667b1cc051512ecc45" [label="local://context" shape="ellipse"];
  "sha256:4a2ad437640776298694bfe0c2e8eb866267d9ba7d00da3714e7ca3dc39a55b4" [label="copy{src=/fmw_12.1.3.0.0_wls.jar, dest=/u01/},copy{src=/install.file, dest=/u01/},copy{src=/oraInst.loc, dest=/u01/}" shape="note"];
  "sha256:8621d543be35433f7d975cca4ed5e8e03e82c1b1cfaf6bf4ada9f4b26b27303a" [label="/bin/sh -c chown oracle:oracle -R /u01" shape="box"];
  "sha256:17178dbeedd31741f2b082c24891bb85913483741898b9837ac849df48b01bb3" [label="/bin/sh -c $JAVA_HOME/bin/java -jar /u01/$FMW_PKG -ignoreSysPrereqs -novalidation -silent -responseFile /u01/install.file -invPtrLoc /u01/oraInst.loc -jreLoc $JAVA_HOME ORACLE_HOME=$ORACLE_HOME INSTALL_TYPE=\"WebLogic Server\" &&     rm /u01/$FMW_PKG /u01/oraInst.loc /u01/install.file" shape="box"];
  "sha256:4ad3e893572d42753b20fcee21302ee3b42d1989765b48170c9783f218c4560c" [label="mkdir{path=/u01/oracle}" shape="note"];
  "sha256:9081b670af8704fa1c35bcde1b80d046b1c12d6b31dec39b7b95688705f9969e" [label="sha256:9081b670af8704fa1c35bcde1b80d046b1c12d6b31dec39b7b95688705f9969e" shape="plaintext"];
  "sha256:3bc780459d5c6f5f679b044eb94450ecd26c81436b6ca363f54cf2b292081bab" -> "sha256:01aa7ba6e7e7acae1d6d4d4bd273a48e505b9c8162aa0f4fffa5ad3db1617c92" [label=""];
  "sha256:01aa7ba6e7e7acae1d6d4d4bd273a48e505b9c8162aa0f4fffa5ad3db1617c92" -> "sha256:4a2ad437640776298694bfe0c2e8eb866267d9ba7d00da3714e7ca3dc39a55b4" [label=""];
  "sha256:1086a2e6d726b99f90dafeb14dc43a3a0c1fc2bb9108f4667b1cc051512ecc45" -> "sha256:4a2ad437640776298694bfe0c2e8eb866267d9ba7d00da3714e7ca3dc39a55b4" [label=""];
  "sha256:4a2ad437640776298694bfe0c2e8eb866267d9ba7d00da3714e7ca3dc39a55b4" -> "sha256:8621d543be35433f7d975cca4ed5e8e03e82c1b1cfaf6bf4ada9f4b26b27303a" [label=""];
  "sha256:8621d543be35433f7d975cca4ed5e8e03e82c1b1cfaf6bf4ada9f4b26b27303a" -> "sha256:17178dbeedd31741f2b082c24891bb85913483741898b9837ac849df48b01bb3" [label=""];
  "sha256:17178dbeedd31741f2b082c24891bb85913483741898b9837ac849df48b01bb3" -> "sha256:4ad3e893572d42753b20fcee21302ee3b42d1989765b48170c9783f218c4560c" [label=""];
  "sha256:4ad3e893572d42753b20fcee21302ee3b42d1989765b48170c9783f218c4560c" -> "sha256:9081b670af8704fa1c35bcde1b80d046b1c12d6b31dec39b7b95688705f9969e" [label=""];
}

