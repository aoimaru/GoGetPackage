[app/sources/162370965.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:0470fefafcbc51ab611c3885850ef7644187bb595616ff93a1601616311392b3" [label="/bin/sh -c apk update && apk upgrade && apk add netcat-openbsd && apk add curl" shape="box"];
  "sha256:39bd25ebe962181633d33f12938dfd953bd2db0fceb595da2787d5bbfd2cba17" [label="/bin/sh -c mkdir -p /usr/local/configserver" shape="box"];
  "sha256:5ce8132c5b6063d1c7d313d3c7214b6bc6629c1bbcd3bc545af457eddce7ab77" [label="/bin/sh -c cd /tmp/ &&     curl -k -LO \"http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip\" -H 'Cookie: oraclelicense=accept-securebackup-cookie' &&     unzip jce_policy-8.zip &&     rm jce_policy-8.zip &&     yes |cp -v /tmp/UnlimitedJCEPolicyJDK8/*.jar /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/" shape="box"];
  "sha256:3e4687ad84dc1306c517313b6d4c6dcf8b0f32006fdcc5a13d015b5273ad504b" [label="local://context" shape="ellipse"];
  "sha256:5fb4f1632aeabde21adcc92cbc8a7ec9cb80612bae9c496e86d08db0c32ca82d" [label="copy{src=/@project.build.finalName@.jar, dest=/usr/local/configserver/}" shape="note"];
  "sha256:2777d77dd37098ad41686d1de28ad47fe2b430d89e47e76bd10b8eb49fddcff5" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:a241af78c7863380935c8ffecd4af66ef40246830eaf05f93fda41c26865393c" [label="/bin/sh -c chmod +x run.sh" shape="box"];
  "sha256:d887b7ff2bc61729b0378c3b649b1ef143ae734ce17a034533d20bfd7d09a08f" [label="sha256:d887b7ff2bc61729b0378c3b649b1ef143ae734ce17a034533d20bfd7d09a08f" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:0470fefafcbc51ab611c3885850ef7644187bb595616ff93a1601616311392b3" [label=""];
  "sha256:0470fefafcbc51ab611c3885850ef7644187bb595616ff93a1601616311392b3" -> "sha256:39bd25ebe962181633d33f12938dfd953bd2db0fceb595da2787d5bbfd2cba17" [label=""];
  "sha256:39bd25ebe962181633d33f12938dfd953bd2db0fceb595da2787d5bbfd2cba17" -> "sha256:5ce8132c5b6063d1c7d313d3c7214b6bc6629c1bbcd3bc545af457eddce7ab77" [label=""];
  "sha256:5ce8132c5b6063d1c7d313d3c7214b6bc6629c1bbcd3bc545af457eddce7ab77" -> "sha256:5fb4f1632aeabde21adcc92cbc8a7ec9cb80612bae9c496e86d08db0c32ca82d" [label=""];
  "sha256:3e4687ad84dc1306c517313b6d4c6dcf8b0f32006fdcc5a13d015b5273ad504b" -> "sha256:5fb4f1632aeabde21adcc92cbc8a7ec9cb80612bae9c496e86d08db0c32ca82d" [label=""];
  "sha256:5fb4f1632aeabde21adcc92cbc8a7ec9cb80612bae9c496e86d08db0c32ca82d" -> "sha256:2777d77dd37098ad41686d1de28ad47fe2b430d89e47e76bd10b8eb49fddcff5" [label=""];
  "sha256:3e4687ad84dc1306c517313b6d4c6dcf8b0f32006fdcc5a13d015b5273ad504b" -> "sha256:2777d77dd37098ad41686d1de28ad47fe2b430d89e47e76bd10b8eb49fddcff5" [label=""];
  "sha256:2777d77dd37098ad41686d1de28ad47fe2b430d89e47e76bd10b8eb49fddcff5" -> "sha256:a241af78c7863380935c8ffecd4af66ef40246830eaf05f93fda41c26865393c" [label=""];
  "sha256:a241af78c7863380935c8ffecd4af66ef40246830eaf05f93fda41c26865393c" -> "sha256:d887b7ff2bc61729b0378c3b649b1ef143ae734ce17a034533d20bfd7d09a08f" [label=""];
}

