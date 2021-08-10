[app/sources/405749984.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:0aa9411303d89fe22e430b89e7d56b65e1b460ac399804eb208c756502c04a41" [label="/bin/sh -c yum -y update && yum -y install java-1.8.0-openjdk-devel wget git patch which epel-release nc" shape="box"];
  "sha256:d039d27dd5f566b08f615854c503499a9012f9640d1a195b0cbed4f12a95d892" [label="/bin/sh -c yum -y install python2-pip python36 && pip install cqlsh" shape="box"];
  "sha256:620eee91df1e298c99769b24e7b3d10dbd2319f9265fac58fa26498fd4bda3bb" [label="/bin/sh -c wget -O /tmp/apache-maven-3.5.4-bin.tar.gz http://www-eu.apache.org/dist/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz" shape="box"];
  "sha256:4c792a2a98b3ca6aa5ed1ff15f9a4a3959331c1440cc7e2093b71e64f8e4457e" [label="/bin/sh -c git clone --depth 1 --branch 0.14.0 https://github.com/brianfrankcooper/YCSB /opt/ycsb" shape="box"];
  "sha256:5e61ac2e78fec21187bb8309dcf0e70897c34bb63f7dbff1b084ad56c376862d" [label="/bin/sh -c tar -C /tmp -xzf /tmp/apache-maven-3.5.4-bin.tar.gz && mv /tmp/apache-maven-3.5.4 /opt/maven" shape="box"];
  "sha256:c178f3e7d7d9375b5adbf47235c6f11752fa088ed9faa954fdcc22287699d754" [label="mkdir{path=/opt/ycsb}" shape="note"];
  "sha256:90df0c905f45552daa52c2d3c896d0a46385827e2cdb71e967386897bde148ab" [label="local://context" shape="ellipse"];
  "sha256:eeaa208ba5175b0fa93e28e892990ea061566adc8780b6cd784bb1b51a2dfb10" [label="copy{src=/intel.patch, dest=/opt/ycsb/}" shape="note"];
  "sha256:a178c191b32474719bd0d58964cee9e095ebb367e36ef233ae8782a6809ff5af" [label="/bin/sh -c patch -p1 -i intel.patch" shape="box"];
  "sha256:6d2967fe1c9955a6577cd43c2f913e0a61df95ba5a02e6a5a8c23921f1718d22" [label="/bin/sh -c ln -sf /opt/maven/bin/mvn /usr/bin/mvn" shape="box"];
  "sha256:0830959bbc052450d5dfbdf5b1bdb0e6ee89463c1a92776d70b13462f46f91b4" [label="/bin/sh -c /opt/maven/bin/mvn -pl com.yahoo.ycsb:core,com.yahoo.ycsb:cassandra-binding,com.yahoo.ycsb:memcached-binding -am clean package -X -Dcheckstyle.skip dependency:build-classpath -DincludeScope=compile -Dmdep.outputFilterFile=true" shape="box"];
  "sha256:598eeb580e3a263e4882187ffa099a4e0abafdd60c28a5012fbb7c4179fc9f91" [label="/bin/sh -c echo 'export M2_HOME=/usr/local/maven' >> /etc/profile.d/maven.sh" shape="box"];
  "sha256:bc4d4f0ec186eb51522ab65b8275e175a0446b911920accbbb675d00949e45d0" [label="/bin/sh -c echo 'export PATH=${M2_HOME}/bin:${PATH}' >> /etc/profile.d/maven.sh" shape="box"];
  "sha256:fae6f2130d63b663fc4a18a7df46780ff5c19078ef0a437895981f5d41611f60" [label="copy{src=/dist/ycsb_wrapper.pex, dest=/usr/bin/}" shape="note"];
  "sha256:cb1b004dbf2a6567d733dfa97c7d5cfbaf9d5be49a4ea7e02e1d96683ef20cfa" [label="sha256:cb1b004dbf2a6567d733dfa97c7d5cfbaf9d5be49a4ea7e02e1d96683ef20cfa" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:0aa9411303d89fe22e430b89e7d56b65e1b460ac399804eb208c756502c04a41" [label=""];
  "sha256:0aa9411303d89fe22e430b89e7d56b65e1b460ac399804eb208c756502c04a41" -> "sha256:d039d27dd5f566b08f615854c503499a9012f9640d1a195b0cbed4f12a95d892" [label=""];
  "sha256:d039d27dd5f566b08f615854c503499a9012f9640d1a195b0cbed4f12a95d892" -> "sha256:620eee91df1e298c99769b24e7b3d10dbd2319f9265fac58fa26498fd4bda3bb" [label=""];
  "sha256:620eee91df1e298c99769b24e7b3d10dbd2319f9265fac58fa26498fd4bda3bb" -> "sha256:4c792a2a98b3ca6aa5ed1ff15f9a4a3959331c1440cc7e2093b71e64f8e4457e" [label=""];
  "sha256:4c792a2a98b3ca6aa5ed1ff15f9a4a3959331c1440cc7e2093b71e64f8e4457e" -> "sha256:5e61ac2e78fec21187bb8309dcf0e70897c34bb63f7dbff1b084ad56c376862d" [label=""];
  "sha256:5e61ac2e78fec21187bb8309dcf0e70897c34bb63f7dbff1b084ad56c376862d" -> "sha256:c178f3e7d7d9375b5adbf47235c6f11752fa088ed9faa954fdcc22287699d754" [label=""];
  "sha256:c178f3e7d7d9375b5adbf47235c6f11752fa088ed9faa954fdcc22287699d754" -> "sha256:eeaa208ba5175b0fa93e28e892990ea061566adc8780b6cd784bb1b51a2dfb10" [label=""];
  "sha256:90df0c905f45552daa52c2d3c896d0a46385827e2cdb71e967386897bde148ab" -> "sha256:eeaa208ba5175b0fa93e28e892990ea061566adc8780b6cd784bb1b51a2dfb10" [label=""];
  "sha256:eeaa208ba5175b0fa93e28e892990ea061566adc8780b6cd784bb1b51a2dfb10" -> "sha256:a178c191b32474719bd0d58964cee9e095ebb367e36ef233ae8782a6809ff5af" [label=""];
  "sha256:a178c191b32474719bd0d58964cee9e095ebb367e36ef233ae8782a6809ff5af" -> "sha256:6d2967fe1c9955a6577cd43c2f913e0a61df95ba5a02e6a5a8c23921f1718d22" [label=""];
  "sha256:6d2967fe1c9955a6577cd43c2f913e0a61df95ba5a02e6a5a8c23921f1718d22" -> "sha256:0830959bbc052450d5dfbdf5b1bdb0e6ee89463c1a92776d70b13462f46f91b4" [label=""];
  "sha256:0830959bbc052450d5dfbdf5b1bdb0e6ee89463c1a92776d70b13462f46f91b4" -> "sha256:598eeb580e3a263e4882187ffa099a4e0abafdd60c28a5012fbb7c4179fc9f91" [label=""];
  "sha256:598eeb580e3a263e4882187ffa099a4e0abafdd60c28a5012fbb7c4179fc9f91" -> "sha256:bc4d4f0ec186eb51522ab65b8275e175a0446b911920accbbb675d00949e45d0" [label=""];
  "sha256:bc4d4f0ec186eb51522ab65b8275e175a0446b911920accbbb675d00949e45d0" -> "sha256:fae6f2130d63b663fc4a18a7df46780ff5c19078ef0a437895981f5d41611f60" [label=""];
  "sha256:90df0c905f45552daa52c2d3c896d0a46385827e2cdb71e967386897bde148ab" -> "sha256:fae6f2130d63b663fc4a18a7df46780ff5c19078ef0a437895981f5d41611f60" [label=""];
  "sha256:fae6f2130d63b663fc4a18a7df46780ff5c19078ef0a437895981f5d41611f60" -> "sha256:cb1b004dbf2a6567d733dfa97c7d5cfbaf9d5be49a4ea7e02e1d96683ef20cfa" [label=""];
}

