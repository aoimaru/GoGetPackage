[app/sources/367998496.Dockerfile]
digraph {
  "sha256:9a4a00440d55b3de938630863df22378cfc92065c6a80dad8977055713ea1111" [label="docker-image://docker.io/library/openjdk:7-jdk" shape="ellipse"];
  "sha256:8adaf0d01d023168e682af070c73e27fc283be885848a6e85a83d5f4f4841567" [label="/bin/sh -c curl -fsSL http://project.hasor.net/hasor/develop/tools/apache/maven/$MAVEN_VERSION/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share         && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven         && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn" shape="box"];
  "sha256:bfb74a91bf6957ebb7a52e7563823af9cfb9a0326df9f8c50d928db01247586e" [label="/bin/sh -c mkdir -p \"/home/repo\" &&     sed -i '/<!-- localRepository/i\\<localRepository>/home/repo</localRepository>' $MAVEN_HOME/conf/settings.xml" shape="box"];
  "sha256:7781c3a097d26638a7d5201ede6047d543976c4de902f1ed4d37b9114c97881c" [label="local://context" shape="ellipse"];
  "sha256:740775f318c03d4d3a67ab1c3052bb8ec63fc26bf29772a898245576b138bee8" [label="copy{src=/, dest=/usr/rsfcenter/src}" shape="note"];
  "sha256:b84f2b91616da23884abd462304e40b920d57c693fccce6da62f7d2d75578853" [label="/bin/sh -c cd $RSF_HOME/src &&     ./build.sh &&     cd `find ./build -name 'bin'` &&     cp -R ../* $RSF_HOME" shape="box"];
  "sha256:bf28fb6985243abd69344ae678f73940e8ea62ed8a2d9c416b641f8a14de395c" [label="mkdir{path=/usr/rsfcenter/bin}" shape="note"];
  "sha256:df4588d9a12c9eb84a2371081642a4fff7db9f458311d5861e65107df1d41536" [label="sha256:df4588d9a12c9eb84a2371081642a4fff7db9f458311d5861e65107df1d41536" shape="plaintext"];
  "sha256:9a4a00440d55b3de938630863df22378cfc92065c6a80dad8977055713ea1111" -> "sha256:8adaf0d01d023168e682af070c73e27fc283be885848a6e85a83d5f4f4841567" [label=""];
  "sha256:8adaf0d01d023168e682af070c73e27fc283be885848a6e85a83d5f4f4841567" -> "sha256:bfb74a91bf6957ebb7a52e7563823af9cfb9a0326df9f8c50d928db01247586e" [label=""];
  "sha256:bfb74a91bf6957ebb7a52e7563823af9cfb9a0326df9f8c50d928db01247586e" -> "sha256:740775f318c03d4d3a67ab1c3052bb8ec63fc26bf29772a898245576b138bee8" [label=""];
  "sha256:7781c3a097d26638a7d5201ede6047d543976c4de902f1ed4d37b9114c97881c" -> "sha256:740775f318c03d4d3a67ab1c3052bb8ec63fc26bf29772a898245576b138bee8" [label=""];
  "sha256:740775f318c03d4d3a67ab1c3052bb8ec63fc26bf29772a898245576b138bee8" -> "sha256:b84f2b91616da23884abd462304e40b920d57c693fccce6da62f7d2d75578853" [label=""];
  "sha256:b84f2b91616da23884abd462304e40b920d57c693fccce6da62f7d2d75578853" -> "sha256:bf28fb6985243abd69344ae678f73940e8ea62ed8a2d9c416b641f8a14de395c" [label=""];
  "sha256:bf28fb6985243abd69344ae678f73940e8ea62ed8a2d9c416b641f8a14de395c" -> "sha256:df4588d9a12c9eb84a2371081642a4fff7db9f458311d5861e65107df1d41536" [label=""];
}

