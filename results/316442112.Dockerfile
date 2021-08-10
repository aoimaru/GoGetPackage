[app/sources/316442112.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:7ebe51946637d27027f30c505db4fbc0c61ad69a665a309a244a6e368c23233e" [label="/bin/sh -c apt-get update &&     apt-get install -y curl gcc libz-dev &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7eccb0c4884b78d4a1ea6e125208e1224b9e723a478e67b106ba65bef7bca194" [label="/bin/sh -c mkdir $GRAALVM_HOME &&     curl -fsL https://github.com/oracle/graal/releases/download/vm-$GRAALVM_VERSION/graalvm-ce-$GRAALVM_VERSION-linux-amd64.tar.gz | tar -xvzf - -C $GRAALVM_HOME --strip-components=1" shape="box"];
  "sha256:dd74608caf37794a00015b23e67a455312af5aa93f230f25bf3587bfd7786e61" [label="/bin/sh -c mkdir $SCALA_HOME &&     curl -fsL https://downloads.typesafe.com/scala/$SCALA_VERSION/scala-$SCALA_VERSION.tgz | tar xfz - -C $SCALA_HOME --strip-components=1" shape="box"];
  "sha256:df3f11fb9693f964fa50c61c408434f1a01ab3c48f2792ed098bba2b6cc2e4cb" [label="/bin/sh -c mkdir $SBT_HOME &&     curl -fsL https://sbt-downloads.cdnedge.bluemix.net/releases/v$SBT_VERSION/sbt-$SBT_VERSION.tgz | tar xfz - -C $SBT_HOME --strip-components=1" shape="box"];
  "sha256:4f5cb6c82d4ecf37d42bf76bac544803894e82c738c33656282bcde88db56a85" [label="/bin/sh -c echo >> ${BASHRC} &&     echo \"export $PATH\" >> ${BASHRC}" shape="box"];
  "sha256:c3250adbf57935c65ca96d971222d0534ac9ee54478df50be6b2a7eaaa171214" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:c1099400d7aff478951ce5a537b25a5a2d52d3f8cb7abd27d48075c3e4d164ce" [label="mkdir{path=/app}" shape="note"];
  "sha256:64a0a4327727bdd4380cbd28b7c16e2c4362697abb667917aebbb61a0aa2cabd" [label="local://context" shape="ellipse"];
  "sha256:6980eaeada2413b35f07abfe4474a54c5f6ad5c8fe821f3a799282638e9759b2" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:d4c1f883b2538a856e378a034f84d49ed4aa8853fd2fa63483694b51c794ea19" [label="sha256:d4c1f883b2538a856e378a034f84d49ed4aa8853fd2fa63483694b51c794ea19" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:7ebe51946637d27027f30c505db4fbc0c61ad69a665a309a244a6e368c23233e" [label=""];
  "sha256:7ebe51946637d27027f30c505db4fbc0c61ad69a665a309a244a6e368c23233e" -> "sha256:7eccb0c4884b78d4a1ea6e125208e1224b9e723a478e67b106ba65bef7bca194" [label=""];
  "sha256:7eccb0c4884b78d4a1ea6e125208e1224b9e723a478e67b106ba65bef7bca194" -> "sha256:dd74608caf37794a00015b23e67a455312af5aa93f230f25bf3587bfd7786e61" [label=""];
  "sha256:dd74608caf37794a00015b23e67a455312af5aa93f230f25bf3587bfd7786e61" -> "sha256:df3f11fb9693f964fa50c61c408434f1a01ab3c48f2792ed098bba2b6cc2e4cb" [label=""];
  "sha256:df3f11fb9693f964fa50c61c408434f1a01ab3c48f2792ed098bba2b6cc2e4cb" -> "sha256:4f5cb6c82d4ecf37d42bf76bac544803894e82c738c33656282bcde88db56a85" [label=""];
  "sha256:4f5cb6c82d4ecf37d42bf76bac544803894e82c738c33656282bcde88db56a85" -> "sha256:c3250adbf57935c65ca96d971222d0534ac9ee54478df50be6b2a7eaaa171214" [label=""];
  "sha256:c3250adbf57935c65ca96d971222d0534ac9ee54478df50be6b2a7eaaa171214" -> "sha256:c1099400d7aff478951ce5a537b25a5a2d52d3f8cb7abd27d48075c3e4d164ce" [label=""];
  "sha256:c1099400d7aff478951ce5a537b25a5a2d52d3f8cb7abd27d48075c3e4d164ce" -> "sha256:6980eaeada2413b35f07abfe4474a54c5f6ad5c8fe821f3a799282638e9759b2" [label=""];
  "sha256:64a0a4327727bdd4380cbd28b7c16e2c4362697abb667917aebbb61a0aa2cabd" -> "sha256:6980eaeada2413b35f07abfe4474a54c5f6ad5c8fe821f3a799282638e9759b2" [label=""];
  "sha256:6980eaeada2413b35f07abfe4474a54c5f6ad5c8fe821f3a799282638e9759b2" -> "sha256:d4c1f883b2538a856e378a034f84d49ed4aa8853fd2fa63483694b51c794ea19" [label=""];
}

