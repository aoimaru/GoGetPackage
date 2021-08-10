[app/sources/169187439.Dockerfile]
digraph {
  "sha256:6e3cd8e75ed4575b10b21c8a1430a5bf2523f0205e97f158f9b24ed00fdeab0c" [label="local://context" shape="ellipse"];
  "sha256:64dbfcfd4581b26c783344dc2cdadbc4d6b75b7f522af1293f4e5c979611810f" [label="docker-image://docker.io/supermy/ap-jdk:latest" shape="ellipse"];
  "sha256:c5d1b89ad8ba9adcb083da1a8af7e57a9aa8c945f3bfbfb36920abb486467486" [label="/bin/sh -c apk add --no-cache curl tar bash" shape="box"];
  "sha256:00cba928e4757125ec576231bac7f02226522a9f5e333362493646d31862f389" [label="/bin/sh -c mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn" shape="box"];
  "sha256:9ef73aad228903c04293fd9b5db65c2588a49d92e14183a6d3f149d7926554b5" [label="copy{src=/mvn-entrypoint.sh, dest=/usr/local/bin/mvn-entrypoint.sh}" shape="note"];
  "sha256:06beb6f69893aa02e8a27049350542ac5e7935fa5897c331e361b022ead1b4c5" [label="/bin/sh -c chmod a+x /usr/local/bin/mvn-entrypoint.sh" shape="box"];
  "sha256:071806772a98b47ee0f02d2993649c685ebe704820ab536606bf791b623579e0" [label="copy{src=/settings-docker.xml, dest=/usr/share/maven/ref/}" shape="note"];
  "sha256:4e118bab153a6beae20ad9758d93e31acb984468208e8048a13399582bb416e8" [label="sha256:4e118bab153a6beae20ad9758d93e31acb984468208e8048a13399582bb416e8" shape="plaintext"];
  "sha256:64dbfcfd4581b26c783344dc2cdadbc4d6b75b7f522af1293f4e5c979611810f" -> "sha256:c5d1b89ad8ba9adcb083da1a8af7e57a9aa8c945f3bfbfb36920abb486467486" [label=""];
  "sha256:c5d1b89ad8ba9adcb083da1a8af7e57a9aa8c945f3bfbfb36920abb486467486" -> "sha256:00cba928e4757125ec576231bac7f02226522a9f5e333362493646d31862f389" [label=""];
  "sha256:00cba928e4757125ec576231bac7f02226522a9f5e333362493646d31862f389" -> "sha256:9ef73aad228903c04293fd9b5db65c2588a49d92e14183a6d3f149d7926554b5" [label=""];
  "sha256:6e3cd8e75ed4575b10b21c8a1430a5bf2523f0205e97f158f9b24ed00fdeab0c" -> "sha256:9ef73aad228903c04293fd9b5db65c2588a49d92e14183a6d3f149d7926554b5" [label=""];
  "sha256:9ef73aad228903c04293fd9b5db65c2588a49d92e14183a6d3f149d7926554b5" -> "sha256:06beb6f69893aa02e8a27049350542ac5e7935fa5897c331e361b022ead1b4c5" [label=""];
  "sha256:06beb6f69893aa02e8a27049350542ac5e7935fa5897c331e361b022ead1b4c5" -> "sha256:071806772a98b47ee0f02d2993649c685ebe704820ab536606bf791b623579e0" [label=""];
  "sha256:6e3cd8e75ed4575b10b21c8a1430a5bf2523f0205e97f158f9b24ed00fdeab0c" -> "sha256:071806772a98b47ee0f02d2993649c685ebe704820ab536606bf791b623579e0" [label=""];
  "sha256:071806772a98b47ee0f02d2993649c685ebe704820ab536606bf791b623579e0" -> "sha256:4e118bab153a6beae20ad9758d93e31acb984468208e8048a13399582bb416e8" [label=""];
}

