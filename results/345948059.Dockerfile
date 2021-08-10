[app/sources/345948059.Dockerfile]
digraph {
  "sha256:4db22658ef5ea3a7fc683082841a4bf776ce80238a0051ef7c9c729f0714a6e6" [label="docker-image://docker.io/library/java:8u45-jdk" shape="ellipse"];
  "sha256:828a1228ecd13dff0c8accba1a407e3c7cd6689a45e1e7d9560b478ef82195bf" [label="/bin/sh -c apt-get update && apt-get -y install curl git nodejs npm" shape="box"];
  "sha256:dab82ca975bc98139933e969008ab14c154b1f44162a6b3dcfc373c7c32185fd" [label="/bin/sh -c curl -sSL http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share     && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven     && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn" shape="box"];
  "sha256:e6001c9c9f91b2723ee9fc82b817998f3859fdf44b64474d135a498dbba03ef1" [label="/bin/sh -c git clone https://github.com/apache/incubator-zeppelin" shape="box"];
  "sha256:13584f8472c4929338dafc0382c0b0de1ff8412f50d4b1c1d711a0ac7cd511ea" [label="/bin/sh -c cd incubator-zeppelin && mvn clean package -Pspark-1.3 -Dhadoop.version=2.2.0 -Phadoop-2.2 -DskipTests &&     apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && rm -rf ~/.m2/repository/" shape="box"];
  "sha256:535a0cc71971499d9d5a2b0951ab2375a9ad2dbbf8b7ce005c3127c5b0c7913c" [label="sha256:535a0cc71971499d9d5a2b0951ab2375a9ad2dbbf8b7ce005c3127c5b0c7913c" shape="plaintext"];
  "sha256:4db22658ef5ea3a7fc683082841a4bf776ce80238a0051ef7c9c729f0714a6e6" -> "sha256:828a1228ecd13dff0c8accba1a407e3c7cd6689a45e1e7d9560b478ef82195bf" [label=""];
  "sha256:828a1228ecd13dff0c8accba1a407e3c7cd6689a45e1e7d9560b478ef82195bf" -> "sha256:dab82ca975bc98139933e969008ab14c154b1f44162a6b3dcfc373c7c32185fd" [label=""];
  "sha256:dab82ca975bc98139933e969008ab14c154b1f44162a6b3dcfc373c7c32185fd" -> "sha256:e6001c9c9f91b2723ee9fc82b817998f3859fdf44b64474d135a498dbba03ef1" [label=""];
  "sha256:e6001c9c9f91b2723ee9fc82b817998f3859fdf44b64474d135a498dbba03ef1" -> "sha256:13584f8472c4929338dafc0382c0b0de1ff8412f50d4b1c1d711a0ac7cd511ea" [label=""];
  "sha256:13584f8472c4929338dafc0382c0b0de1ff8412f50d4b1c1d711a0ac7cd511ea" -> "sha256:535a0cc71971499d9d5a2b0951ab2375a9ad2dbbf8b7ce005c3127c5b0c7913c" [label=""];
}

