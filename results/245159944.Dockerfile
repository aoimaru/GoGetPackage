[app/sources/245159944.Dockerfile]
digraph {
  "sha256:c4887a24c05e66b3154ab6ffd4c339bcaebfbbd749190fe265725f4658f3de7d" [label="docker-image://docker.io/library/ubuntu:17.04" shape="ellipse"];
  "sha256:29f94a79e270be29c0bb01eb6fbbd30120af1277e5417daf644211bee5a4c24d" [label="/bin/sh -c apt-get clean &&         apt-get update &&         apt-get -qy install                         wget                         default-jre-headless                         telnet                         iputils-ping                         unzip" shape="box"];
  "sha256:33cc5d7bb63bf335294158718c3b6bce12b4ea4938d2aed75920067de5c8a86b" [label="/bin/sh -c mkdir /jmeter         && cd /jmeter/         && wget https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-3.1.tgz         && tar -xzf apache-jmeter-3.1.tgz         && rm apache-jmeter-3.1.tgz         && mkdir /jmeter-plugins         && cd /jmeter-plugins/         && wget https://jmeter-plugins.org/downloads/file/JMeterPlugins-ExtrasLibs-1.4.0.zip         && unzip -o JMeterPlugins-ExtrasLibs-1.4.0.zip -d /jmeter/apache-jmeter-3.1/" shape="box"];
  "sha256:1fac15f5b9f8c566500a6b4728ea9d80a311687dc3ac4d4f3d798b45ea80073b" [label="sha256:1fac15f5b9f8c566500a6b4728ea9d80a311687dc3ac4d4f3d798b45ea80073b" shape="plaintext"];
  "sha256:c4887a24c05e66b3154ab6ffd4c339bcaebfbbd749190fe265725f4658f3de7d" -> "sha256:29f94a79e270be29c0bb01eb6fbbd30120af1277e5417daf644211bee5a4c24d" [label=""];
  "sha256:29f94a79e270be29c0bb01eb6fbbd30120af1277e5417daf644211bee5a4c24d" -> "sha256:33cc5d7bb63bf335294158718c3b6bce12b4ea4938d2aed75920067de5c8a86b" [label=""];
  "sha256:33cc5d7bb63bf335294158718c3b6bce12b4ea4938d2aed75920067de5c8a86b" -> "sha256:1fac15f5b9f8c566500a6b4728ea9d80a311687dc3ac4d4f3d798b45ea80073b" [label=""];
}

