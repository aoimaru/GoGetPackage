[app/sources/229288195.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:f93be1b2f21ec840067ba26505a0e25cbb7cbde1ffdd7bf74d6fda36b226fb0c" [label="/bin/sh -c apk --update add bash curl && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:bf556ad907958ea9ef2a2f7e44dc7675b2b53c368040398bcdc87ee55b609105" [label="/bin/sh -c curl -sL \"http://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-$SBT_VERSION.tgz\" | gunzip | tar -x -C /usr/local &&     echo -ne \"- with sbt $SBT_VERSION\\n\" >> /root/.built" shape="box"];
  "sha256:5beed1f38d2dde9c88ab34891c528082de3071a590ec732c977f2f80fc9bbb83" [label="mkdir{path=/app}" shape="note"];
  "sha256:28611ec5c3a7ab8d33e2e569fb9ad9499115ff5733db3c25a10f3fb0cda710ec" [label="/bin/sh -c mkdir -p /app/project" shape="box"];
  "sha256:0cdd12ffb558adbd24a7183ceb308911fa03b3fdceb30b8844e0723380e5b474" [label="local://context" shape="ellipse"];
  "sha256:b85c60d3b767626a4baa9fd3b156f4525bcd85aeadeba626b15b9fa951ca4a26" [label="copy{src=/build.sbt, dest=/app}" shape="note"];
  "sha256:4984709bf7ce630fcc7f09f9b74873ccd4082fda2095ebad245437627bb9c48a" [label="copy{src=/project/plugins.sbt, dest=/app/project}" shape="note"];
  "sha256:03ea87d58d3c85dbdf06c4adc1bc4d581c19d176854b7c5250b571b67b22ddf5" [label="copy{src=/project/build.properties, dest=/app/project}" shape="note"];
  "sha256:e9a547895ffeb4aa83792bddcd840f386b66a3596c52729616519e147571709c" [label="/bin/sh -c sbt compile" shape="box"];
  "sha256:40dc6190f6ad5dfa4c7af48f8f4173041e7a540b2c06aafd782120d4892cae2e" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:e77e6a7ed3488cd3ab4bab6ab5c50824baa5b704ef7abdaadd574afad16fea9e" [label="/bin/sh -c sbt assembly" shape="box"];
  "sha256:f336ce93822f4f733e5dd904c384da383678d0986228f70923388cb607b05a27" [label="sha256:f336ce93822f4f733e5dd904c384da383678d0986228f70923388cb607b05a27" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:f93be1b2f21ec840067ba26505a0e25cbb7cbde1ffdd7bf74d6fda36b226fb0c" [label=""];
  "sha256:f93be1b2f21ec840067ba26505a0e25cbb7cbde1ffdd7bf74d6fda36b226fb0c" -> "sha256:bf556ad907958ea9ef2a2f7e44dc7675b2b53c368040398bcdc87ee55b609105" [label=""];
  "sha256:bf556ad907958ea9ef2a2f7e44dc7675b2b53c368040398bcdc87ee55b609105" -> "sha256:5beed1f38d2dde9c88ab34891c528082de3071a590ec732c977f2f80fc9bbb83" [label=""];
  "sha256:5beed1f38d2dde9c88ab34891c528082de3071a590ec732c977f2f80fc9bbb83" -> "sha256:28611ec5c3a7ab8d33e2e569fb9ad9499115ff5733db3c25a10f3fb0cda710ec" [label=""];
  "sha256:28611ec5c3a7ab8d33e2e569fb9ad9499115ff5733db3c25a10f3fb0cda710ec" -> "sha256:b85c60d3b767626a4baa9fd3b156f4525bcd85aeadeba626b15b9fa951ca4a26" [label=""];
  "sha256:0cdd12ffb558adbd24a7183ceb308911fa03b3fdceb30b8844e0723380e5b474" -> "sha256:b85c60d3b767626a4baa9fd3b156f4525bcd85aeadeba626b15b9fa951ca4a26" [label=""];
  "sha256:b85c60d3b767626a4baa9fd3b156f4525bcd85aeadeba626b15b9fa951ca4a26" -> "sha256:4984709bf7ce630fcc7f09f9b74873ccd4082fda2095ebad245437627bb9c48a" [label=""];
  "sha256:0cdd12ffb558adbd24a7183ceb308911fa03b3fdceb30b8844e0723380e5b474" -> "sha256:4984709bf7ce630fcc7f09f9b74873ccd4082fda2095ebad245437627bb9c48a" [label=""];
  "sha256:4984709bf7ce630fcc7f09f9b74873ccd4082fda2095ebad245437627bb9c48a" -> "sha256:03ea87d58d3c85dbdf06c4adc1bc4d581c19d176854b7c5250b571b67b22ddf5" [label=""];
  "sha256:0cdd12ffb558adbd24a7183ceb308911fa03b3fdceb30b8844e0723380e5b474" -> "sha256:03ea87d58d3c85dbdf06c4adc1bc4d581c19d176854b7c5250b571b67b22ddf5" [label=""];
  "sha256:03ea87d58d3c85dbdf06c4adc1bc4d581c19d176854b7c5250b571b67b22ddf5" -> "sha256:e9a547895ffeb4aa83792bddcd840f386b66a3596c52729616519e147571709c" [label=""];
  "sha256:e9a547895ffeb4aa83792bddcd840f386b66a3596c52729616519e147571709c" -> "sha256:40dc6190f6ad5dfa4c7af48f8f4173041e7a540b2c06aafd782120d4892cae2e" [label=""];
  "sha256:0cdd12ffb558adbd24a7183ceb308911fa03b3fdceb30b8844e0723380e5b474" -> "sha256:40dc6190f6ad5dfa4c7af48f8f4173041e7a540b2c06aafd782120d4892cae2e" [label=""];
  "sha256:40dc6190f6ad5dfa4c7af48f8f4173041e7a540b2c06aafd782120d4892cae2e" -> "sha256:e77e6a7ed3488cd3ab4bab6ab5c50824baa5b704ef7abdaadd574afad16fea9e" [label=""];
  "sha256:e77e6a7ed3488cd3ab4bab6ab5c50824baa5b704ef7abdaadd574afad16fea9e" -> "sha256:f336ce93822f4f733e5dd904c384da383678d0986228f70923388cb607b05a27" [label=""];
}

