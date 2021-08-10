[app/sources/469991452.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:cfc0d05b60860bf5ee99e5de1c87c946bcd9cf509eac64e6427c4543d12c7e98" [label="/bin/sh -c groupadd marvin &&     useradd marvin -mg marvin" shape="box"];
  "sha256:5c8f25e43eba091e0126fc2b845c610101382961a7bb47e6ef74d393376ccd43" [label="/bin/sh -c mkdir -p $MARVIN_HOME &&     mkdir -p $MARVIN_DATA_PATH &&     mkdir -p $MARVIN_ENGINE_HOME &&     mkdir -p /var/log/marvin/engines &&     mkdir -p /var/run/marvin/engines" shape="box"];
  "sha256:e2136485085063ca7aaebcbdf9072af7a53eed4f9abb73b0787d6c6b9e9106d0" [label="/bin/sh -c apt-get update -y &&     apt-get install -y build-essential &&     apt-get install -y maven git cmake software-properties-common curl libstdc++6 &&     apt-get install -y wget &&     apt-get install -y libffi-dev &&     apt-get install -y libssl-dev &&     apt-get install -y libxml2-dev &&     apt-get install -y libxslt1-dev &&     apt-get install -y libpng12-dev &&     apt-get install -y libfreetype6-dev &&     apt-get install -y libsasl2-dev &&     apt-get install -y graphviz &&     apt-get clean" shape="box"];
  "sha256:56c33a017cd196a019e9a3cd119d24e60635542a616fb8c1b0de21d9c9b66033" [label="/bin/sh -c add-apt-repository ppa:openjdk-r/ppa &&     apt-get update &&     apt-get install -y openjdk-8-jdk" shape="box"];
  "sha256:9f3db50f3a23c47e772063d8a6cd14b4d7f075b8d7a7e4d54abb97f08a2dbcc3" [label="sha256:9f3db50f3a23c47e772063d8a6cd14b4d7f075b8d7a7e4d54abb97f08a2dbcc3" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:cfc0d05b60860bf5ee99e5de1c87c946bcd9cf509eac64e6427c4543d12c7e98" [label=""];
  "sha256:cfc0d05b60860bf5ee99e5de1c87c946bcd9cf509eac64e6427c4543d12c7e98" -> "sha256:5c8f25e43eba091e0126fc2b845c610101382961a7bb47e6ef74d393376ccd43" [label=""];
  "sha256:5c8f25e43eba091e0126fc2b845c610101382961a7bb47e6ef74d393376ccd43" -> "sha256:e2136485085063ca7aaebcbdf9072af7a53eed4f9abb73b0787d6c6b9e9106d0" [label=""];
  "sha256:e2136485085063ca7aaebcbdf9072af7a53eed4f9abb73b0787d6c6b9e9106d0" -> "sha256:56c33a017cd196a019e9a3cd119d24e60635542a616fb8c1b0de21d9c9b66033" [label=""];
  "sha256:56c33a017cd196a019e9a3cd119d24e60635542a616fb8c1b0de21d9c9b66033" -> "sha256:9f3db50f3a23c47e772063d8a6cd14b4d7f075b8d7a7e4d54abb97f08a2dbcc3" [label=""];
}

