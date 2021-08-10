[app/sources/254094814.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:0470fefafcbc51ab611c3885850ef7644187bb595616ff93a1601616311392b3" [label="/bin/sh -c apk update && apk upgrade && apk add netcat-openbsd && apk add curl" shape="box"];
  "sha256:39bd25ebe962181633d33f12938dfd953bd2db0fceb595da2787d5bbfd2cba17" [label="/bin/sh -c mkdir -p /usr/local/configserver" shape="box"];
  "sha256:5ce8132c5b6063d1c7d313d3c7214b6bc6629c1bbcd3bc545af457eddce7ab77" [label="/bin/sh -c cd /tmp/ &&     curl -k -LO \"http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip\" -H 'Cookie: oraclelicense=accept-securebackup-cookie' &&     unzip jce_policy-8.zip &&     rm jce_policy-8.zip &&     yes |cp -v /tmp/UnlimitedJCEPolicyJDK8/*.jar /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/" shape="box"];
  "sha256:b0a6ef460b2ab51c720da4e6d5befedd86cebf6de227c2d4649bf07f7fc44e4d" [label="local://context" shape="ellipse"];
  "sha256:7cf9cc815c2cab37a614bf8555db49788fbeb0db65c085b50cd14a628f48499c" [label="copy{src=/@project.build.finalName@.jar, dest=/usr/local/configserver/}" shape="note"];
  "sha256:9b0d8fad93892ad328257f0f6bc12bc54ba8993c0b52632af4b2c0173a06cf71" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:988c96592109b7ea21742d80ef05aed3662b2a6d5d50b3f5038badab0f6c052b" [label="/bin/sh -c chmod +x run.sh" shape="box"];
  "sha256:e3c05c1093acace3cd9b1750c03760ff83fe0eb4b1ad5c0a9613e7cdc77697dc" [label="sha256:e3c05c1093acace3cd9b1750c03760ff83fe0eb4b1ad5c0a9613e7cdc77697dc" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:0470fefafcbc51ab611c3885850ef7644187bb595616ff93a1601616311392b3" [label=""];
  "sha256:0470fefafcbc51ab611c3885850ef7644187bb595616ff93a1601616311392b3" -> "sha256:39bd25ebe962181633d33f12938dfd953bd2db0fceb595da2787d5bbfd2cba17" [label=""];
  "sha256:39bd25ebe962181633d33f12938dfd953bd2db0fceb595da2787d5bbfd2cba17" -> "sha256:5ce8132c5b6063d1c7d313d3c7214b6bc6629c1bbcd3bc545af457eddce7ab77" [label=""];
  "sha256:5ce8132c5b6063d1c7d313d3c7214b6bc6629c1bbcd3bc545af457eddce7ab77" -> "sha256:7cf9cc815c2cab37a614bf8555db49788fbeb0db65c085b50cd14a628f48499c" [label=""];
  "sha256:b0a6ef460b2ab51c720da4e6d5befedd86cebf6de227c2d4649bf07f7fc44e4d" -> "sha256:7cf9cc815c2cab37a614bf8555db49788fbeb0db65c085b50cd14a628f48499c" [label=""];
  "sha256:7cf9cc815c2cab37a614bf8555db49788fbeb0db65c085b50cd14a628f48499c" -> "sha256:9b0d8fad93892ad328257f0f6bc12bc54ba8993c0b52632af4b2c0173a06cf71" [label=""];
  "sha256:b0a6ef460b2ab51c720da4e6d5befedd86cebf6de227c2d4649bf07f7fc44e4d" -> "sha256:9b0d8fad93892ad328257f0f6bc12bc54ba8993c0b52632af4b2c0173a06cf71" [label=""];
  "sha256:9b0d8fad93892ad328257f0f6bc12bc54ba8993c0b52632af4b2c0173a06cf71" -> "sha256:988c96592109b7ea21742d80ef05aed3662b2a6d5d50b3f5038badab0f6c052b" [label=""];
  "sha256:988c96592109b7ea21742d80ef05aed3662b2a6d5d50b3f5038badab0f6c052b" -> "sha256:e3c05c1093acace3cd9b1750c03760ff83fe0eb4b1ad5c0a9613e7cdc77697dc" [label=""];
}

