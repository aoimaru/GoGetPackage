[app/sources/183736611.Dockerfile]
digraph {
  "sha256:74a8843f423909c7863a656e77d5eecd93a8b52e2ba6dbd1653950e261fabe0d" [label="docker-image://docker.io/airdock/base:jessie" shape="ellipse"];
  "sha256:480fa2ff1d90475966496cf91b3cab587729646943bbf5db8046d02165d888ff" [label="local://context" shape="ellipse"];
  "sha256:97e57b6118c0dad222456f9a003694dc3da33ffaf2621ffc8a1b081e6dc4a2dc" [label="copy{src=/java-dynamic-memory-opts, dest=/srv/java/}" shape="note"];
  "sha256:19dc245899c6a1541afc788c64d753e8c6f51f830eeb62bbfee43e0fcb34c7af" [label="/bin/sh -c cd /tmp &&     curl -L -O -H \"Cookie: oraclelicense=accept-securebackup-cookie\" -k \"http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jre-8u65-linux-x64.tar.gz\" &&     tar xf jre-8u65-linux-x64.tar.gz -C /srv/java &&     rm -f jre-8u65-linux-x64.tar.gz &&     ln -s /srv/java/jre* /srv/java/jre &&     ln -s /srv/java/jre /srv/java/jvm &&     chown -R java:java /srv/java &&     /root/post-install" shape="box"];
  "sha256:4dff2954b82832f0cf708f2dddcfaea56e55bbbf4f0c4d985499df7e20834810" [label="sha256:4dff2954b82832f0cf708f2dddcfaea56e55bbbf4f0c4d985499df7e20834810" shape="plaintext"];
  "sha256:74a8843f423909c7863a656e77d5eecd93a8b52e2ba6dbd1653950e261fabe0d" -> "sha256:97e57b6118c0dad222456f9a003694dc3da33ffaf2621ffc8a1b081e6dc4a2dc" [label=""];
  "sha256:480fa2ff1d90475966496cf91b3cab587729646943bbf5db8046d02165d888ff" -> "sha256:97e57b6118c0dad222456f9a003694dc3da33ffaf2621ffc8a1b081e6dc4a2dc" [label=""];
  "sha256:97e57b6118c0dad222456f9a003694dc3da33ffaf2621ffc8a1b081e6dc4a2dc" -> "sha256:19dc245899c6a1541afc788c64d753e8c6f51f830eeb62bbfee43e0fcb34c7af" [label=""];
  "sha256:19dc245899c6a1541afc788c64d753e8c6f51f830eeb62bbfee43e0fcb34c7af" -> "sha256:4dff2954b82832f0cf708f2dddcfaea56e55bbbf4f0c4d985499df7e20834810" [label=""];
}

