[app/sources/226195093.Dockerfile]
digraph {
  "sha256:f5e5e47e804f267d0fa25e332546b4f4df22dea136baa50895e5256add90efa4" [label="docker-image://docker.io/anapsix/alpine-java:8_jdk" shape="ellipse"];
  "sha256:4bb187500ca8d63a56f3cbfd2092226ac5e3c2ee949c70d0293fc0d6ae025858" [label="http://ftp.fau.de/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz" shape="ellipse"];
  "sha256:aa4c3bfb92172043310da10f7ff262a0001823b415db4406e212e27e42ccdc57" [label="copy{src=/apache-maven-3.3.9-bin.tar.gz, dest=/tmp}" shape="note"];
  "sha256:ca5eedfbcc0c2a0971e862375838b7294ca27f19261fa1f77f6ba193eeaca6b0" [label="/bin/sh -c set -x &&     tar -xvzf /tmp/apache-maven-3.3.9-bin.tar.gz -C /tmp &&     mv /tmp/apache-maven-3.3.9 /usr/lib/mvn &&     rm -rf /tmp/*" shape="box"];
  "sha256:0bd1d411d38480fff5c554283dbc9374cbae847c1f4eb7630b891d1bb9aa8110" [label="/bin/sh -c mkdir bot" shape="box"];
  "sha256:15d61d79c313c4d9adef002e01f40dea541d2bff1f2c3294fa444557090ba2d8" [label="local://context" shape="ellipse"];
  "sha256:8eb08dd2d5fc279614b896b3266206c8bc05ae37ac4ba7602954929b8317929e" [label="copy{src=/src, dest=/bot/src}" shape="note"];
  "sha256:57f0fa3a32ad1a79727cf8783933b248e595f61a19409c9db82b6592f97aa6ff" [label="copy{src=/pom.xml, dest=/bot}" shape="note"];
  "sha256:7b4bb14acde4ea3e740c3fc80628666dc397382336b55d503a4b2342bf790714" [label="/bin/sh -c set -x &&     cd /bot &&     mvn install -q dependency:copy-dependencies &&     mv target/dependency . &&     mv target/bot.jar . &&     rm -r target src pom.xml /usr/lib/mvn" shape="box"];
  "sha256:6ba2ee461c21272f8d8241e412fca8a5bf9b24b9a6f72dcda02c4a9b6db8b9aa" [label="mkdir{path=/bot}" shape="note"];
  "sha256:5975422cbd2e48fa1c6e2d19dab21a01fe1a947ef1e60baa0c0ab8648be9c873" [label="sha256:5975422cbd2e48fa1c6e2d19dab21a01fe1a947ef1e60baa0c0ab8648be9c873" shape="plaintext"];
  "sha256:f5e5e47e804f267d0fa25e332546b4f4df22dea136baa50895e5256add90efa4" -> "sha256:aa4c3bfb92172043310da10f7ff262a0001823b415db4406e212e27e42ccdc57" [label=""];
  "sha256:4bb187500ca8d63a56f3cbfd2092226ac5e3c2ee949c70d0293fc0d6ae025858" -> "sha256:aa4c3bfb92172043310da10f7ff262a0001823b415db4406e212e27e42ccdc57" [label=""];
  "sha256:aa4c3bfb92172043310da10f7ff262a0001823b415db4406e212e27e42ccdc57" -> "sha256:ca5eedfbcc0c2a0971e862375838b7294ca27f19261fa1f77f6ba193eeaca6b0" [label=""];
  "sha256:ca5eedfbcc0c2a0971e862375838b7294ca27f19261fa1f77f6ba193eeaca6b0" -> "sha256:0bd1d411d38480fff5c554283dbc9374cbae847c1f4eb7630b891d1bb9aa8110" [label=""];
  "sha256:0bd1d411d38480fff5c554283dbc9374cbae847c1f4eb7630b891d1bb9aa8110" -> "sha256:8eb08dd2d5fc279614b896b3266206c8bc05ae37ac4ba7602954929b8317929e" [label=""];
  "sha256:15d61d79c313c4d9adef002e01f40dea541d2bff1f2c3294fa444557090ba2d8" -> "sha256:8eb08dd2d5fc279614b896b3266206c8bc05ae37ac4ba7602954929b8317929e" [label=""];
  "sha256:8eb08dd2d5fc279614b896b3266206c8bc05ae37ac4ba7602954929b8317929e" -> "sha256:57f0fa3a32ad1a79727cf8783933b248e595f61a19409c9db82b6592f97aa6ff" [label=""];
  "sha256:15d61d79c313c4d9adef002e01f40dea541d2bff1f2c3294fa444557090ba2d8" -> "sha256:57f0fa3a32ad1a79727cf8783933b248e595f61a19409c9db82b6592f97aa6ff" [label=""];
  "sha256:57f0fa3a32ad1a79727cf8783933b248e595f61a19409c9db82b6592f97aa6ff" -> "sha256:7b4bb14acde4ea3e740c3fc80628666dc397382336b55d503a4b2342bf790714" [label=""];
  "sha256:7b4bb14acde4ea3e740c3fc80628666dc397382336b55d503a4b2342bf790714" -> "sha256:6ba2ee461c21272f8d8241e412fca8a5bf9b24b9a6f72dcda02c4a9b6db8b9aa" [label=""];
  "sha256:6ba2ee461c21272f8d8241e412fca8a5bf9b24b9a6f72dcda02c4a9b6db8b9aa" -> "sha256:5975422cbd2e48fa1c6e2d19dab21a01fe1a947ef1e60baa0c0ab8648be9c873" [label=""];
}

