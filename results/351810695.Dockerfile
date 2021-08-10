[app/sources/351810695.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:f0b077424dc9be15dafd2a15a6071d6b540721576e5b4697989c5433b2d14d58" [label="/bin/sh -c apt-get update &&   apt-get install -y     python     libnss3     openjdk-8-jre-headless     openssh-server     openssh-client" shape="box"];
  "sha256:22e7fbfc27b6f6b977164948cdf6d3ad853e681590f70895fadd4c9111681205" [label="/bin/sh -c mkdir /opt/apache-hadoop" shape="box"];
  "sha256:13764d3e66d01649463bf734ef656eafdf00275c7f012f0910ac4a8e563e7216" [label="local://context" shape="ellipse"];
  "sha256:cf93b4892daa36919b0a7e8ffd5303f3f941889ed62a7ebc9d6dae803dff4fab" [label="copy{src=/apache-hadoop, dest=/opt/apache-hadoop}" shape="note"];
  "sha256:bb2442487b2cc23b64795cb846e69c73892fc3fcd2c1466f931fc1a8f1819fdd" [label="/bin/sh -c sed -i '/^export JAVA_HOME/ s:.*:export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre/\\nexport HADOOP_PREFIX=/opt/apache-hadoop\\nexport HADOOP_HOME=/opt/apache-hadoop\\n:' $HADOOP_PREFIX/etc/hadoop/hadoop-env.sh" shape="box"];
  "sha256:e72bd4383ee65ad9540cd8d180d3b2abd63d4a231c21e2ae619ecb41805f334b" [label="/bin/sh -c sed -i '/^export HADOOP_CONF_DIR/ s:.*:export HADOOP_CONF_DIR=/usr/local/hadoop/etc/hadoop/:' $HADOOP_PREFIX/etc/hadoop/hadoop-env.sh" shape="box"];
  "sha256:e7c29e0d214fb64a433502cffb09e11a77e5a0661f9405815631d93ddd48e2ec" [label="/bin/sh -c rm -f $HADOOP_PREFIX/etc/hadoop/hadoop-env.sh.bak" shape="box"];
  "sha256:c09a2468b11989db0442c924b309a46e1648116060361d3d06a28ac7389a3e1c" [label="/bin/sh -c chmod +x $HADOOP_PREFIX/etc/hadoop/hadoop-env.sh" shape="box"];
  "sha256:fe1797ccd8588624ebc6c2214cf60cb64420ac534fc69c01d04ec64136501343" [label="copy{src=/hadoop-docker/core-site.xml.template, dest=/opt/apache-hadoop/etc/hadoop/core-site.xml.template}" shape="note"];
  "sha256:a13e9b934a27f8d1e067ef71ff2ab10ef40baca1d0fb1843c46b837187b939ad" [label="/bin/sh -c sed -i s/9000/8020/ $HADOOP_PREFIX/etc/hadoop/core-site.xml.template" shape="box"];
  "sha256:38162674ed7ecae7178e4790a1d1f9171cc17ede89d6b828c3e2720e8763816d" [label="copy{src=/hdfs-site.xml, dest=/opt/apache-hadoop/etc/hadoop/hdfs-site.xml}" shape="note"];
  "sha256:fb7b4d7f4d9151eed59f7f060026d6d9611d2e79d9141c02bdd40b1597abbbfc" [label="copy{src=/hadoop-docker/mapred-site.xml, dest=/opt/apache-hadoop/etc/hadoop/mapred-site.xml}" shape="note"];
  "sha256:6f868c332fda2dc34b6bd482afb13429791ca488c2c20a04872ce7c7385586a7" [label="copy{src=/hadoop-docker/yarn-site.xml, dest=/opt/apache-hadoop/etc/hadoop/yarn-site.xml.template}" shape="note"];
  "sha256:f6bd0476485dde75ba308b308267800b2f71dd383a4e830dd5a99c241fc147c6" [label="copy{src=/hadoop-docker/ssh_config, dest=/root/.ssh/config}" shape="note"];
  "sha256:7c5294f413d2be589a7c8795342b692ab5674952fe06ca30888e0a51efb0c70a" [label="/bin/sh -c chmod 600 /root/.ssh/config" shape="box"];
  "sha256:adfa1c2fe48c56cfd01a36a2ea30f9bffdaf1b2c29a35e2f42a33e8594b1cc3a" [label="/bin/sh -c chown root:root /root/.ssh/config" shape="box"];
  "sha256:6db8f840170cd8e00f9a10d0b90d50df77402fea6be8604dd6fa732178c5fdb7" [label="sha256:6db8f840170cd8e00f9a10d0b90d50df77402fea6be8604dd6fa732178c5fdb7" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:f0b077424dc9be15dafd2a15a6071d6b540721576e5b4697989c5433b2d14d58" [label=""];
  "sha256:f0b077424dc9be15dafd2a15a6071d6b540721576e5b4697989c5433b2d14d58" -> "sha256:22e7fbfc27b6f6b977164948cdf6d3ad853e681590f70895fadd4c9111681205" [label=""];
  "sha256:22e7fbfc27b6f6b977164948cdf6d3ad853e681590f70895fadd4c9111681205" -> "sha256:cf93b4892daa36919b0a7e8ffd5303f3f941889ed62a7ebc9d6dae803dff4fab" [label=""];
  "sha256:13764d3e66d01649463bf734ef656eafdf00275c7f012f0910ac4a8e563e7216" -> "sha256:cf93b4892daa36919b0a7e8ffd5303f3f941889ed62a7ebc9d6dae803dff4fab" [label=""];
  "sha256:cf93b4892daa36919b0a7e8ffd5303f3f941889ed62a7ebc9d6dae803dff4fab" -> "sha256:bb2442487b2cc23b64795cb846e69c73892fc3fcd2c1466f931fc1a8f1819fdd" [label=""];
  "sha256:bb2442487b2cc23b64795cb846e69c73892fc3fcd2c1466f931fc1a8f1819fdd" -> "sha256:e72bd4383ee65ad9540cd8d180d3b2abd63d4a231c21e2ae619ecb41805f334b" [label=""];
  "sha256:e72bd4383ee65ad9540cd8d180d3b2abd63d4a231c21e2ae619ecb41805f334b" -> "sha256:e7c29e0d214fb64a433502cffb09e11a77e5a0661f9405815631d93ddd48e2ec" [label=""];
  "sha256:e7c29e0d214fb64a433502cffb09e11a77e5a0661f9405815631d93ddd48e2ec" -> "sha256:c09a2468b11989db0442c924b309a46e1648116060361d3d06a28ac7389a3e1c" [label=""];
  "sha256:c09a2468b11989db0442c924b309a46e1648116060361d3d06a28ac7389a3e1c" -> "sha256:fe1797ccd8588624ebc6c2214cf60cb64420ac534fc69c01d04ec64136501343" [label=""];
  "sha256:13764d3e66d01649463bf734ef656eafdf00275c7f012f0910ac4a8e563e7216" -> "sha256:fe1797ccd8588624ebc6c2214cf60cb64420ac534fc69c01d04ec64136501343" [label=""];
  "sha256:fe1797ccd8588624ebc6c2214cf60cb64420ac534fc69c01d04ec64136501343" -> "sha256:a13e9b934a27f8d1e067ef71ff2ab10ef40baca1d0fb1843c46b837187b939ad" [label=""];
  "sha256:a13e9b934a27f8d1e067ef71ff2ab10ef40baca1d0fb1843c46b837187b939ad" -> "sha256:38162674ed7ecae7178e4790a1d1f9171cc17ede89d6b828c3e2720e8763816d" [label=""];
  "sha256:13764d3e66d01649463bf734ef656eafdf00275c7f012f0910ac4a8e563e7216" -> "sha256:38162674ed7ecae7178e4790a1d1f9171cc17ede89d6b828c3e2720e8763816d" [label=""];
  "sha256:38162674ed7ecae7178e4790a1d1f9171cc17ede89d6b828c3e2720e8763816d" -> "sha256:fb7b4d7f4d9151eed59f7f060026d6d9611d2e79d9141c02bdd40b1597abbbfc" [label=""];
  "sha256:13764d3e66d01649463bf734ef656eafdf00275c7f012f0910ac4a8e563e7216" -> "sha256:fb7b4d7f4d9151eed59f7f060026d6d9611d2e79d9141c02bdd40b1597abbbfc" [label=""];
  "sha256:fb7b4d7f4d9151eed59f7f060026d6d9611d2e79d9141c02bdd40b1597abbbfc" -> "sha256:6f868c332fda2dc34b6bd482afb13429791ca488c2c20a04872ce7c7385586a7" [label=""];
  "sha256:13764d3e66d01649463bf734ef656eafdf00275c7f012f0910ac4a8e563e7216" -> "sha256:6f868c332fda2dc34b6bd482afb13429791ca488c2c20a04872ce7c7385586a7" [label=""];
  "sha256:6f868c332fda2dc34b6bd482afb13429791ca488c2c20a04872ce7c7385586a7" -> "sha256:f6bd0476485dde75ba308b308267800b2f71dd383a4e830dd5a99c241fc147c6" [label=""];
  "sha256:13764d3e66d01649463bf734ef656eafdf00275c7f012f0910ac4a8e563e7216" -> "sha256:f6bd0476485dde75ba308b308267800b2f71dd383a4e830dd5a99c241fc147c6" [label=""];
  "sha256:f6bd0476485dde75ba308b308267800b2f71dd383a4e830dd5a99c241fc147c6" -> "sha256:7c5294f413d2be589a7c8795342b692ab5674952fe06ca30888e0a51efb0c70a" [label=""];
  "sha256:7c5294f413d2be589a7c8795342b692ab5674952fe06ca30888e0a51efb0c70a" -> "sha256:adfa1c2fe48c56cfd01a36a2ea30f9bffdaf1b2c29a35e2f42a33e8594b1cc3a" [label=""];
  "sha256:adfa1c2fe48c56cfd01a36a2ea30f9bffdaf1b2c29a35e2f42a33e8594b1cc3a" -> "sha256:6db8f840170cd8e00f9a10d0b90d50df77402fea6be8604dd6fa732178c5fdb7" [label=""];
}

