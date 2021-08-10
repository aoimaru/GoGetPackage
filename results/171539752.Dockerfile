[app/sources/171539752.Dockerfile]
digraph {
  "sha256:fe48ababcb1d30d15851b7156fdb06396ec156818c98c70f7dc8e52425651dee" [label="local://context" shape="ellipse"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:d084c380d409a5e05e7834035b1df7179310f724a703f555cec3fd836c5c75c3" [label="/bin/sh -c yum -y install sudo" shape="box"];
  "sha256:4705ec180503c02f9e72689404ceea9dded720486c46a6f942130e97e019fc1c" [label="copy{src=/jdk-7u72-linux-x64.tar.gz, dest=/opt}" shape="note"];
  "sha256:fc30c843e66d6049bd2eed7a66dbd8033691ffd344299dacbaf7f45bf929601e" [label="mkdir{path=/opt/jdk1.7.0_72}" shape="note"];
  "sha256:bd4c1178d6644a1de73f0ff8e227a01b1cd68d0a2ce3a1c376963c4950276b20" [label="/bin/sh -c alternatives --install /usr/bin/java java /opt/jdk1.7.0_72/bin/java 1" shape="box"];
  "sha256:2899ee3bb35dade82fcd919c3d02b7cb40c903d6cf39ceab01961ad6b9b50843" [label="/bin/sh -c alternatives --install /usr/bin/jar jar /opt/jdk1.7.0_72/bin/jar 1" shape="box"];
  "sha256:bf018bd56769284e71776a4e0a803405339b765b3aa61dd24f5b44f488cc417c" [label="/bin/sh -c alternatives --install /usr/bin/javac javac /opt/jdk1.7.0_72/bin/javac 1" shape="box"];
  "sha256:bdf05a2393169a3b3cfbead1a5a849af3e345e56247c9e10fe504302cc69cf2a" [label="/bin/sh -c echo \"JAVA_HOME=/opt/jdk1.7.0_72\" >> /etc/environment" shape="box"];
  "sha256:86be1949059e95be18dd6c643a403b15aac8c4ea2cab7e499aa7c1ad23d34115" [label="copy{src=/apache-tomcat-7.0.57.tar.gz, dest=/usr/share}" shape="note"];
  "sha256:dc8e43c1752c16d79e1f18c59e0767827714cccb3a7e6d532753497997f3b4a7" [label="copy{src=/tomcat7, dest=/etc/rc.d/init.d/}" shape="note"];
  "sha256:53dcb1293455287dd433112cb54f6d858ec313d35b945950233e8517b68694bc" [label="mkdir{path=/usr/share}" shape="note"];
  "sha256:41d640fd26b90aa0644daacbd6bde62a33c3f991a9be5972fa93bcc70b0dfc92" [label="/bin/sh -c mv  apache-tomcat-7.0.57 tomcat7" shape="box"];
  "sha256:d4aa9c97d4ac4cb67fb80c8f3d53be7fdac0e3aefaabfd1df9720250ba9e3b9a" [label="/bin/sh -c echo \"JAVA_HOME=/opt/jdk1.7.0_72/\" >> /etc/default/tomcat7" shape="box"];
  "sha256:f172bca45e811343c6f23ef516e0796fef1854e716999876adddfc90103edbb6" [label="/bin/sh -c groupadd tomcat" shape="box"];
  "sha256:5bd55e39c14c8482cf4709be684af6a86cec5dfc3a7959679acec72a410c47f1" [label="/bin/sh -c useradd -s /bin/bash -g tomcat tomcat" shape="box"];
  "sha256:0b06cca2f6a3a23c503e7ac3166cc65651f94d4dd93661318b7acbbd1783e7c6" [label="/bin/sh -c chown -Rf tomcat.tomcat /usr/share/tomcat7" shape="box"];
  "sha256:4a48fb7389fff06019caf13da3b02bbef91604f30c706c1f87d08c380b82e0a8" [label="sha256:4a48fb7389fff06019caf13da3b02bbef91604f30c706c1f87d08c380b82e0a8" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:d084c380d409a5e05e7834035b1df7179310f724a703f555cec3fd836c5c75c3" [label=""];
  "sha256:d084c380d409a5e05e7834035b1df7179310f724a703f555cec3fd836c5c75c3" -> "sha256:4705ec180503c02f9e72689404ceea9dded720486c46a6f942130e97e019fc1c" [label=""];
  "sha256:fe48ababcb1d30d15851b7156fdb06396ec156818c98c70f7dc8e52425651dee" -> "sha256:4705ec180503c02f9e72689404ceea9dded720486c46a6f942130e97e019fc1c" [label=""];
  "sha256:4705ec180503c02f9e72689404ceea9dded720486c46a6f942130e97e019fc1c" -> "sha256:fc30c843e66d6049bd2eed7a66dbd8033691ffd344299dacbaf7f45bf929601e" [label=""];
  "sha256:fc30c843e66d6049bd2eed7a66dbd8033691ffd344299dacbaf7f45bf929601e" -> "sha256:bd4c1178d6644a1de73f0ff8e227a01b1cd68d0a2ce3a1c376963c4950276b20" [label=""];
  "sha256:bd4c1178d6644a1de73f0ff8e227a01b1cd68d0a2ce3a1c376963c4950276b20" -> "sha256:2899ee3bb35dade82fcd919c3d02b7cb40c903d6cf39ceab01961ad6b9b50843" [label=""];
  "sha256:2899ee3bb35dade82fcd919c3d02b7cb40c903d6cf39ceab01961ad6b9b50843" -> "sha256:bf018bd56769284e71776a4e0a803405339b765b3aa61dd24f5b44f488cc417c" [label=""];
  "sha256:bf018bd56769284e71776a4e0a803405339b765b3aa61dd24f5b44f488cc417c" -> "sha256:bdf05a2393169a3b3cfbead1a5a849af3e345e56247c9e10fe504302cc69cf2a" [label=""];
  "sha256:bdf05a2393169a3b3cfbead1a5a849af3e345e56247c9e10fe504302cc69cf2a" -> "sha256:86be1949059e95be18dd6c643a403b15aac8c4ea2cab7e499aa7c1ad23d34115" [label=""];
  "sha256:fe48ababcb1d30d15851b7156fdb06396ec156818c98c70f7dc8e52425651dee" -> "sha256:86be1949059e95be18dd6c643a403b15aac8c4ea2cab7e499aa7c1ad23d34115" [label=""];
  "sha256:86be1949059e95be18dd6c643a403b15aac8c4ea2cab7e499aa7c1ad23d34115" -> "sha256:dc8e43c1752c16d79e1f18c59e0767827714cccb3a7e6d532753497997f3b4a7" [label=""];
  "sha256:fe48ababcb1d30d15851b7156fdb06396ec156818c98c70f7dc8e52425651dee" -> "sha256:dc8e43c1752c16d79e1f18c59e0767827714cccb3a7e6d532753497997f3b4a7" [label=""];
  "sha256:dc8e43c1752c16d79e1f18c59e0767827714cccb3a7e6d532753497997f3b4a7" -> "sha256:53dcb1293455287dd433112cb54f6d858ec313d35b945950233e8517b68694bc" [label=""];
  "sha256:53dcb1293455287dd433112cb54f6d858ec313d35b945950233e8517b68694bc" -> "sha256:41d640fd26b90aa0644daacbd6bde62a33c3f991a9be5972fa93bcc70b0dfc92" [label=""];
  "sha256:41d640fd26b90aa0644daacbd6bde62a33c3f991a9be5972fa93bcc70b0dfc92" -> "sha256:d4aa9c97d4ac4cb67fb80c8f3d53be7fdac0e3aefaabfd1df9720250ba9e3b9a" [label=""];
  "sha256:d4aa9c97d4ac4cb67fb80c8f3d53be7fdac0e3aefaabfd1df9720250ba9e3b9a" -> "sha256:f172bca45e811343c6f23ef516e0796fef1854e716999876adddfc90103edbb6" [label=""];
  "sha256:f172bca45e811343c6f23ef516e0796fef1854e716999876adddfc90103edbb6" -> "sha256:5bd55e39c14c8482cf4709be684af6a86cec5dfc3a7959679acec72a410c47f1" [label=""];
  "sha256:5bd55e39c14c8482cf4709be684af6a86cec5dfc3a7959679acec72a410c47f1" -> "sha256:0b06cca2f6a3a23c503e7ac3166cc65651f94d4dd93661318b7acbbd1783e7c6" [label=""];
  "sha256:0b06cca2f6a3a23c503e7ac3166cc65651f94d4dd93661318b7acbbd1783e7c6" -> "sha256:4a48fb7389fff06019caf13da3b02bbef91604f30c706c1f87d08c380b82e0a8" [label=""];
}

