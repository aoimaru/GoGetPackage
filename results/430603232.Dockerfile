[app/sources/430603232.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:da92e357cb37aae521ea9ce1f7c57c7f7acb34c7c06dd907ef9f2fdd3cba49ab" [label="/bin/sh -c dpkg --add-architecture i386     && apt-get update     && apt-get -y install         curl         build-essential         autotools-dev         automake         cmake         pkg-config         gcc-multilib         g++-multilib         file     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:208be733454509701af123a03e56a2f627aea6ee8b7428bed2bd5f1fd5184f15" [label="/bin/sh -c mkdir -p ${GTEST_ROOT}     && cd /tmp     && curl -o gtest.tar.gz       -L https://github.com/google/googletest/archive/${GTEST_VER}.tar.gz     && tar -zxvf gtest.tar.gz --strip-components=1 -C ${GTEST_ROOT}     && rm gtest.tar.gz" shape="box"];
  "sha256:d62c6151ee813d1f4a0426bc0b0e7bb653a368576daeb269b1d3f2610e54e064" [label="/bin/sh -c echo 'export JAVA_HOME=$(readlink -f /usr/bin/javac | sed \"s:/bin/javac::\")'>> /etc/bash.bashrc" shape="box"];
  "sha256:c34ce3298603c4d22bc7becb1dfd8aeeacc7587b1d1f433f98cd36bedc9b0bf0" [label="/bin/sh -c echo '/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/amd64/\\n/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/amd64/server/\\n' > /etc/ld.so.conf.d/jdk.conf" shape="box"];
  "sha256:f5883ed6d053ac8e7d57097ab426fb3b79c168f481308fb95e5bda5bc9b0777c" [label="/bin/sh -c ldconfig" shape="box"];
  "sha256:7bb68b0b1aeafff9d39e0156be7226539f565e406681a936cab35ef3b52de2b4" [label="/bin/sh -c groupadd     -g ${JENKINS_GROUPID}     jenkins" shape="box"];
  "sha256:62d0871b7502b69e1774d875f92c93cbc49905eff208284e2c2c65f222632576" [label="/bin/sh -c useradd     --create-home     --uid ${JENKINS_USERID}     --gid ${JENKINS_GROUPID}     --shell \"/bin/bash\"     jenkins" shape="box"];
  "sha256:4822071032108d8fae6e6970150758e96c7987050c9ecaf35a486fcc8bab6695" [label="sha256:4822071032108d8fae6e6970150758e96c7987050c9ecaf35a486fcc8bab6695" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:da92e357cb37aae521ea9ce1f7c57c7f7acb34c7c06dd907ef9f2fdd3cba49ab" [label=""];
  "sha256:da92e357cb37aae521ea9ce1f7c57c7f7acb34c7c06dd907ef9f2fdd3cba49ab" -> "sha256:208be733454509701af123a03e56a2f627aea6ee8b7428bed2bd5f1fd5184f15" [label=""];
  "sha256:208be733454509701af123a03e56a2f627aea6ee8b7428bed2bd5f1fd5184f15" -> "sha256:d62c6151ee813d1f4a0426bc0b0e7bb653a368576daeb269b1d3f2610e54e064" [label=""];
  "sha256:d62c6151ee813d1f4a0426bc0b0e7bb653a368576daeb269b1d3f2610e54e064" -> "sha256:c34ce3298603c4d22bc7becb1dfd8aeeacc7587b1d1f433f98cd36bedc9b0bf0" [label=""];
  "sha256:c34ce3298603c4d22bc7becb1dfd8aeeacc7587b1d1f433f98cd36bedc9b0bf0" -> "sha256:f5883ed6d053ac8e7d57097ab426fb3b79c168f481308fb95e5bda5bc9b0777c" [label=""];
  "sha256:f5883ed6d053ac8e7d57097ab426fb3b79c168f481308fb95e5bda5bc9b0777c" -> "sha256:7bb68b0b1aeafff9d39e0156be7226539f565e406681a936cab35ef3b52de2b4" [label=""];
  "sha256:7bb68b0b1aeafff9d39e0156be7226539f565e406681a936cab35ef3b52de2b4" -> "sha256:62d0871b7502b69e1774d875f92c93cbc49905eff208284e2c2c65f222632576" [label=""];
  "sha256:62d0871b7502b69e1774d875f92c93cbc49905eff208284e2c2c65f222632576" -> "sha256:4822071032108d8fae6e6970150758e96c7987050c9ecaf35a486fcc8bab6695" [label=""];
}

