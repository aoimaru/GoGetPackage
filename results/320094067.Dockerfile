[app/sources/320094067.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:6a668955db316cbb47876636dbe0bee9158ac39e7e950b025a25c47766e69036" [label="/bin/sh -c bash -c '     set -euxo pipefail &&     apt-get update &&     pkg=\"openjdk-$JAVA_VERSION\";     if [ \"$JAVA_RELEASE\" = \"JDK\" ]; then         pkg=\"$pkg-jdk\";     else         pkg=\"$pkg-jre-headless\";     fi;     apt-get install -y --no-install-recommends \"$pkg\" &&     apt-get clean     '" shape="box"];
  "sha256:91572f6ae0806634cb2eb448a2643dbe7361b0dd1f399d59e738777d8d2ba261" [label="local://context" shape="ellipse"];
  "sha256:34cb0c2e324ee878c18f11658c6815e8c54c2b2c4640cb8b20c00f166a452e1f" [label="copy{src=/profile.d/java.sh, dest=/etc/profile.d/}" shape="note"];
  "sha256:d1f846738225707b6ea767a7f79bf4bb07adebdd7fa1386bfbe92023cd0074ec" [label="sha256:d1f846738225707b6ea767a7f79bf4bb07adebdd7fa1386bfbe92023cd0074ec" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:6a668955db316cbb47876636dbe0bee9158ac39e7e950b025a25c47766e69036" [label=""];
  "sha256:6a668955db316cbb47876636dbe0bee9158ac39e7e950b025a25c47766e69036" -> "sha256:34cb0c2e324ee878c18f11658c6815e8c54c2b2c4640cb8b20c00f166a452e1f" [label=""];
  "sha256:91572f6ae0806634cb2eb448a2643dbe7361b0dd1f399d59e738777d8d2ba261" -> "sha256:34cb0c2e324ee878c18f11658c6815e8c54c2b2c4640cb8b20c00f166a452e1f" [label=""];
  "sha256:34cb0c2e324ee878c18f11658c6815e8c54c2b2c4640cb8b20c00f166a452e1f" -> "sha256:d1f846738225707b6ea767a7f79bf4bb07adebdd7fa1386bfbe92023cd0074ec" [label=""];
}

