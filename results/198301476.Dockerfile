[app/sources/198301476.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:83e0881d4e40e51a054ced8746c07ded6304faa7ae65e06a125d9d11348dd203" [label="/bin/sh -c apk add --no-cache curl tar" shape="box"];
  "sha256:e1036d8811f26c0795e54944e320c868d6d4300bc15cd2311e300dbdb875e710" [label="/bin/sh -c mkdir -p /usr/share/maven &&     curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar -xzC /usr/share/maven --strip-components=1 &&     ln -s /usr/share/maven/bin/mvn /usr/bin/mvn" shape="box"];
  "sha256:3b1212678d48781ea57dc1785427f5fc1b4648fc1a3a0813580c465f54fded2c" [label="local://context" shape="ellipse"];
  "sha256:c45e09a95161fccbffe381e4cce6ab01b721488d39e98743a2a9e22a7a453d55" [label="copy{src=/pom.xml, dest=/rapid/}" shape="note"];
  "sha256:e67266c7f491748b3e248278aa135ff5df62ecb305d9ad5a049b0dfa27d98c8b" [label="copy{src=/src/main, dest=/rapid/src/main/}" shape="note"];
  "sha256:69ccd96c07ad041b954f6aa7c08bccde2f0c9687311a912d9dfd17047541323a" [label="mkdir{path=/rapid}" shape="note"];
  "sha256:d95103b9b0b310c679dbf7c290dbac4b02681a004ff0d263cebf7d67e6cce713" [label="/bin/sh -c mvn -T 1C install -DskipTests" shape="box"];
  "sha256:e495e454ca285799568ef21d8c991869bbbdecd874ef0b63f36b363806bc2dcb" [label="copy{src=/rapid/target/dependency/jetty-runner.jar, dest=/rapid/}" shape="note"];
  "sha256:abf017ec82da56edea6312e7abfa1ba53bf13a8d96208318c25b80d7120825ba" [label="copy{src=/rapid/target/rapid.war, dest=/rapid/}" shape="note"];
  "sha256:2bfd6d6929d741b26642b14370b63918508546cc92a826f0eef71a76af8d7703" [label="sha256:2bfd6d6929d741b26642b14370b63918508546cc92a826f0eef71a76af8d7703" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:83e0881d4e40e51a054ced8746c07ded6304faa7ae65e06a125d9d11348dd203" [label=""];
  "sha256:83e0881d4e40e51a054ced8746c07ded6304faa7ae65e06a125d9d11348dd203" -> "sha256:e1036d8811f26c0795e54944e320c868d6d4300bc15cd2311e300dbdb875e710" [label=""];
  "sha256:e1036d8811f26c0795e54944e320c868d6d4300bc15cd2311e300dbdb875e710" -> "sha256:c45e09a95161fccbffe381e4cce6ab01b721488d39e98743a2a9e22a7a453d55" [label=""];
  "sha256:3b1212678d48781ea57dc1785427f5fc1b4648fc1a3a0813580c465f54fded2c" -> "sha256:c45e09a95161fccbffe381e4cce6ab01b721488d39e98743a2a9e22a7a453d55" [label=""];
  "sha256:c45e09a95161fccbffe381e4cce6ab01b721488d39e98743a2a9e22a7a453d55" -> "sha256:e67266c7f491748b3e248278aa135ff5df62ecb305d9ad5a049b0dfa27d98c8b" [label=""];
  "sha256:3b1212678d48781ea57dc1785427f5fc1b4648fc1a3a0813580c465f54fded2c" -> "sha256:e67266c7f491748b3e248278aa135ff5df62ecb305d9ad5a049b0dfa27d98c8b" [label=""];
  "sha256:e67266c7f491748b3e248278aa135ff5df62ecb305d9ad5a049b0dfa27d98c8b" -> "sha256:69ccd96c07ad041b954f6aa7c08bccde2f0c9687311a912d9dfd17047541323a" [label=""];
  "sha256:69ccd96c07ad041b954f6aa7c08bccde2f0c9687311a912d9dfd17047541323a" -> "sha256:d95103b9b0b310c679dbf7c290dbac4b02681a004ff0d263cebf7d67e6cce713" [label=""];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:e495e454ca285799568ef21d8c991869bbbdecd874ef0b63f36b363806bc2dcb" [label=""];
  "sha256:d95103b9b0b310c679dbf7c290dbac4b02681a004ff0d263cebf7d67e6cce713" -> "sha256:e495e454ca285799568ef21d8c991869bbbdecd874ef0b63f36b363806bc2dcb" [label=""];
  "sha256:e495e454ca285799568ef21d8c991869bbbdecd874ef0b63f36b363806bc2dcb" -> "sha256:abf017ec82da56edea6312e7abfa1ba53bf13a8d96208318c25b80d7120825ba" [label=""];
  "sha256:d95103b9b0b310c679dbf7c290dbac4b02681a004ff0d263cebf7d67e6cce713" -> "sha256:abf017ec82da56edea6312e7abfa1ba53bf13a8d96208318c25b80d7120825ba" [label=""];
  "sha256:abf017ec82da56edea6312e7abfa1ba53bf13a8d96208318c25b80d7120825ba" -> "sha256:2bfd6d6929d741b26642b14370b63918508546cc92a826f0eef71a76af8d7703" [label=""];
}

