[app/sources/252775200.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:94d7c26db67da675f45d07c4e8905841b9339924a1553c6b2a724398e5218b78" [label="/bin/sh -c yum update -y && yum install -y java-1.8.0-openjdk-headless && yum clean all" shape="box"];
  "sha256:8d8fda28905d0b0679e3e4890d1514a2d25eef4ba474745ad6e9d5540006b122" [label="local://context" shape="ellipse"];
  "sha256:d5b9192fe1a9182e503f40f16b444ae3492a6a8e33686b690dab5c32c2ea8899" [label="copy{src=/start-kafka-manager.sh, dest=/kafka-manager-1.3.3.8/start-kafka-manager.sh}" shape="note"];
  "sha256:edcae0f01de6952a4d6cc866922525f55eefc699f0e1b7c5c8a77e58164e4e5c" [label="/bin/sh -c yum install -y java-1.8.0-openjdk-devel git wget unzip which && mkdir -p /tmp && cd /tmp && git clone https://github.com/yahoo/kafka-manager && cd /tmp/kafka-manager && git checkout ${KM_REVISION} && echo 'scalacOptions ++= Seq(\"-Xmax-classfile-name\", \"200\")' >> build.sbt && ./sbt clean dist && unzip -d / ./target/universal/kafka-manager-${KM_VERSION}.zip && rm -fr /tmp/* /root/.sbt /root/.ivy2 && chmod +x /kafka-manager-${KM_VERSION}/start-kafka-manager.sh && yum autoremove -y java-1.8.0-openjdk-devel git wget unzip which && yum clean all" shape="box"];
  "sha256:8ac79301881ff1e6e3be0a556a917d2314a0a82f8163c72e6fb936ceae7f51ec" [label="mkdir{path=/kafka-manager-1.3.3.8}" shape="note"];
  "sha256:2da4473a502f76e5ed9e2d8a69a2d7b74b6e8d059010906f3d1b63c939cb37bb" [label="sha256:2da4473a502f76e5ed9e2d8a69a2d7b74b6e8d059010906f3d1b63c939cb37bb" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:94d7c26db67da675f45d07c4e8905841b9339924a1553c6b2a724398e5218b78" [label=""];
  "sha256:94d7c26db67da675f45d07c4e8905841b9339924a1553c6b2a724398e5218b78" -> "sha256:d5b9192fe1a9182e503f40f16b444ae3492a6a8e33686b690dab5c32c2ea8899" [label=""];
  "sha256:8d8fda28905d0b0679e3e4890d1514a2d25eef4ba474745ad6e9d5540006b122" -> "sha256:d5b9192fe1a9182e503f40f16b444ae3492a6a8e33686b690dab5c32c2ea8899" [label=""];
  "sha256:d5b9192fe1a9182e503f40f16b444ae3492a6a8e33686b690dab5c32c2ea8899" -> "sha256:edcae0f01de6952a4d6cc866922525f55eefc699f0e1b7c5c8a77e58164e4e5c" [label=""];
  "sha256:edcae0f01de6952a4d6cc866922525f55eefc699f0e1b7c5c8a77e58164e4e5c" -> "sha256:8ac79301881ff1e6e3be0a556a917d2314a0a82f8163c72e6fb936ceae7f51ec" [label=""];
  "sha256:8ac79301881ff1e6e3be0a556a917d2314a0a82f8163c72e6fb936ceae7f51ec" -> "sha256:2da4473a502f76e5ed9e2d8a69a2d7b74b6e8d059010906f3d1b63c939cb37bb" [label=""];
}

