[app/sources/359975336.Dockerfile]
digraph {
  "sha256:db8389f5682729bc2a98a93cf68fa7904a620cb28a83eb28d8ccbfadfa341370" [label="docker-image://docker.io/library/java:8-jre@sha256:b91008e234402fc87e7889d6af1f36b6ece844c05989236d83d1f658a6f329b0" shape="ellipse"];
  "sha256:ef75544fc029ad3baf59039e1e0991874dbbc833fd0ce64f49550993067890d4" [label="/bin/sh -c apt-get update && apt-get install -y supervisor wget" shape="box"];
  "sha256:9e5ddf04532e3613dc4599c74e2f1df452c14bb8121ed1cf0ac5a6935837e209" [label="/bin/sh -c mkdir -p /var/log/supervisor" shape="box"];
  "sha256:560d1c7a6da46358df19626dac0453df45653a1705c275f17b612dc702bea4ad" [label="local://context" shape="ellipse"];
  "sha256:8af5fb98d5fe2aea1dc49d517d8dc839adaff593248b671c370a27a00add3dc1" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:2ae2455632fc22c50b9340bd28efe5a12624516ac157c7e5b7280795a99f209a" [label="mkdir{path=/opt/cepheus}" shape="note"];
  "sha256:65633185ede3a976f808a63b846f6faaf03daf26dda0b32dd4fc17e6db75d73b" [label="/bin/sh -c wget -q -O cepheus-cep.jar \"https://oss.sonatype.org/service/local/artifact/maven/redirect?r=$CEPHEUS_REPO&g=com.orange.cepheus&a=cepheus-cep&v=$CEPHEUS_VERSION\"" shape="box"];
  "sha256:d768a9a44982b6763385773aa451509c5c97476192e219c96d32b2b4a6a4db8f" [label="/bin/sh -c wget -q -O cepheus-broker.jar \"https://oss.sonatype.org/service/local/artifact/maven/redirect?r=$CEPHEUS_REPO&g=com.orange.cepheus&a=cepheus-broker&v=$CEPHEUS_VERSION\"" shape="box"];
  "sha256:85c51737c0feae319b1570c7148ac09bc8aad1263c74f754301a3786320ea755" [label="sha256:85c51737c0feae319b1570c7148ac09bc8aad1263c74f754301a3786320ea755" shape="plaintext"];
  "sha256:db8389f5682729bc2a98a93cf68fa7904a620cb28a83eb28d8ccbfadfa341370" -> "sha256:ef75544fc029ad3baf59039e1e0991874dbbc833fd0ce64f49550993067890d4" [label=""];
  "sha256:ef75544fc029ad3baf59039e1e0991874dbbc833fd0ce64f49550993067890d4" -> "sha256:9e5ddf04532e3613dc4599c74e2f1df452c14bb8121ed1cf0ac5a6935837e209" [label=""];
  "sha256:9e5ddf04532e3613dc4599c74e2f1df452c14bb8121ed1cf0ac5a6935837e209" -> "sha256:8af5fb98d5fe2aea1dc49d517d8dc839adaff593248b671c370a27a00add3dc1" [label=""];
  "sha256:560d1c7a6da46358df19626dac0453df45653a1705c275f17b612dc702bea4ad" -> "sha256:8af5fb98d5fe2aea1dc49d517d8dc839adaff593248b671c370a27a00add3dc1" [label=""];
  "sha256:8af5fb98d5fe2aea1dc49d517d8dc839adaff593248b671c370a27a00add3dc1" -> "sha256:2ae2455632fc22c50b9340bd28efe5a12624516ac157c7e5b7280795a99f209a" [label=""];
  "sha256:2ae2455632fc22c50b9340bd28efe5a12624516ac157c7e5b7280795a99f209a" -> "sha256:65633185ede3a976f808a63b846f6faaf03daf26dda0b32dd4fc17e6db75d73b" [label=""];
  "sha256:65633185ede3a976f808a63b846f6faaf03daf26dda0b32dd4fc17e6db75d73b" -> "sha256:d768a9a44982b6763385773aa451509c5c97476192e219c96d32b2b4a6a4db8f" [label=""];
  "sha256:d768a9a44982b6763385773aa451509c5c97476192e219c96d32b2b4a6a4db8f" -> "sha256:85c51737c0feae319b1570c7148ac09bc8aad1263c74f754301a3786320ea755" [label=""];
}

