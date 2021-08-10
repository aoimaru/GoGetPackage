[app/sources/140020205.Dockerfile]
digraph {
  "sha256:0fb939674cc804a63bc41829a19d22519d6d2f1b7b180ca93915b9da4637d791" [label="docker-image://docker.io/library/java:8-jdk" shape="ellipse"];
  "sha256:9e2dfa7a53742e28b78ec5abffb8b397b61e83d2bb1b6106e5d4ea181b7b2146" [label="/bin/sh -c set -x         && apt-get update         && apt-get install -y nano openjdk-7-jdk ruby ruby-dev gcc make         && rm -rf /var/lib/apt/lists/*         && gem install jekyll --no-document         && cd /usr/local/lib         && curl http://www.nic.funet.fi/pub/mirrors/apache.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz             | tar -xz         && ln -s /usr/local/lib/apache-maven-$MAVEN_VERSION/bin/mvn /usr/local/bin/mvn" shape="box"];
  "sha256:62a2ae48189414eed2361d949a864488bc36088fbe16cbe849f85b2009d24583" [label="mkdir{path=/specsy}" shape="note"];
  "sha256:254a8d10381418311b196ccd2e551d2bdf34be212b3c18590535930d950bfeff" [label="sha256:254a8d10381418311b196ccd2e551d2bdf34be212b3c18590535930d950bfeff" shape="plaintext"];
  "sha256:0fb939674cc804a63bc41829a19d22519d6d2f1b7b180ca93915b9da4637d791" -> "sha256:9e2dfa7a53742e28b78ec5abffb8b397b61e83d2bb1b6106e5d4ea181b7b2146" [label=""];
  "sha256:9e2dfa7a53742e28b78ec5abffb8b397b61e83d2bb1b6106e5d4ea181b7b2146" -> "sha256:62a2ae48189414eed2361d949a864488bc36088fbe16cbe849f85b2009d24583" [label=""];
  "sha256:62a2ae48189414eed2361d949a864488bc36088fbe16cbe849f85b2009d24583" -> "sha256:254a8d10381418311b196ccd2e551d2bdf34be212b3c18590535930d950bfeff" [label=""];
}

