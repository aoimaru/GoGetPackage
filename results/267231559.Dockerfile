[app/sources/267231559.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:40f862d3a2efa42b29f2e1dbf580db599a5e0841be5b29843a40fde8fb839428" [label="/bin/sh -c apt-get update && apt-get install -y wget" shape="box"];
  "sha256:e1538974cbe39484017ed2bf35762b76f7d06e1fac1177801ac0e4b54c8831c2" [label="/bin/sh -c wget https://beats-nightlies.s3.amazonaws.com/filebeat/filebeat-6.0.0-alpha1-SNAPSHOT-linux-x86_64.tar.gz -O filebeat.tar.gz" shape="box"];
  "sha256:0792bf63cc78825eaf72763ad90a96f9e5d739dc1774efda32b1c9a87a3558db" [label="/bin/sh -c mkdir filebeat" shape="box"];
  "sha256:2108dbbe3972b4b99e99beec9b00bd15e1714ac04587adc88f3c183cff9799a3" [label="/bin/sh -c tar xvfz filebeat.tar.gz -C filebeat --strip-components=1" shape="box"];
  "sha256:3d48cca5e0cb4f57e8be74f99c073054868f3aa8b6ce9403190ff9a3a1e45bd7" [label="/bin/sh -c wget https://beats-nightlies.s3.amazonaws.com/metricbeat/metricbeat-6.0.0-alpha1-SNAPSHOT-amd64.deb -O metricbeat.deb" shape="box"];
  "sha256:a02271f0079a51ea792053051fd0103aaca78f33474a09721085f3b3e5e4e908" [label="/bin/sh -c dpkg --force-overwrite -i metricbeat.deb" shape="box"];
  "sha256:289621675d725adde76166e7c5e9c7315a0b69ecb229aeaffc97376933ff8340" [label="local://context" shape="ellipse"];
  "sha256:c74a318703fa3fbf55b8b2ff65aead4f36d9be939e5a4026b458d5d5da05ac83" [label="copy{src=/filebeat.yml, dest=/filebeat/filebeat.yml}" shape="note"];
  "sha256:83adca61cc887bca4a6170bd4df9a648088ec24bed3184eaab30392ffa447666" [label="copy{src=/metricbeat.yml, dest=/etc/metricbeat/metricbeat.yml}" shape="note"];
  "sha256:7a1322d7e2c9883ab43239d97cc99e1378abf4bed34578967b75c3e38a5c4079" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:51ce8c9446fa90da7eb14476c0b157fed31179b59551adf2b0373cba67011ce1" [label="sha256:51ce8c9446fa90da7eb14476c0b157fed31179b59551adf2b0373cba67011ce1" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:40f862d3a2efa42b29f2e1dbf580db599a5e0841be5b29843a40fde8fb839428" [label=""];
  "sha256:40f862d3a2efa42b29f2e1dbf580db599a5e0841be5b29843a40fde8fb839428" -> "sha256:e1538974cbe39484017ed2bf35762b76f7d06e1fac1177801ac0e4b54c8831c2" [label=""];
  "sha256:e1538974cbe39484017ed2bf35762b76f7d06e1fac1177801ac0e4b54c8831c2" -> "sha256:0792bf63cc78825eaf72763ad90a96f9e5d739dc1774efda32b1c9a87a3558db" [label=""];
  "sha256:0792bf63cc78825eaf72763ad90a96f9e5d739dc1774efda32b1c9a87a3558db" -> "sha256:2108dbbe3972b4b99e99beec9b00bd15e1714ac04587adc88f3c183cff9799a3" [label=""];
  "sha256:2108dbbe3972b4b99e99beec9b00bd15e1714ac04587adc88f3c183cff9799a3" -> "sha256:3d48cca5e0cb4f57e8be74f99c073054868f3aa8b6ce9403190ff9a3a1e45bd7" [label=""];
  "sha256:3d48cca5e0cb4f57e8be74f99c073054868f3aa8b6ce9403190ff9a3a1e45bd7" -> "sha256:a02271f0079a51ea792053051fd0103aaca78f33474a09721085f3b3e5e4e908" [label=""];
  "sha256:a02271f0079a51ea792053051fd0103aaca78f33474a09721085f3b3e5e4e908" -> "sha256:c74a318703fa3fbf55b8b2ff65aead4f36d9be939e5a4026b458d5d5da05ac83" [label=""];
  "sha256:289621675d725adde76166e7c5e9c7315a0b69ecb229aeaffc97376933ff8340" -> "sha256:c74a318703fa3fbf55b8b2ff65aead4f36d9be939e5a4026b458d5d5da05ac83" [label=""];
  "sha256:c74a318703fa3fbf55b8b2ff65aead4f36d9be939e5a4026b458d5d5da05ac83" -> "sha256:83adca61cc887bca4a6170bd4df9a648088ec24bed3184eaab30392ffa447666" [label=""];
  "sha256:289621675d725adde76166e7c5e9c7315a0b69ecb229aeaffc97376933ff8340" -> "sha256:83adca61cc887bca4a6170bd4df9a648088ec24bed3184eaab30392ffa447666" [label=""];
  "sha256:83adca61cc887bca4a6170bd4df9a648088ec24bed3184eaab30392ffa447666" -> "sha256:7a1322d7e2c9883ab43239d97cc99e1378abf4bed34578967b75c3e38a5c4079" [label=""];
  "sha256:289621675d725adde76166e7c5e9c7315a0b69ecb229aeaffc97376933ff8340" -> "sha256:7a1322d7e2c9883ab43239d97cc99e1378abf4bed34578967b75c3e38a5c4079" [label=""];
  "sha256:7a1322d7e2c9883ab43239d97cc99e1378abf4bed34578967b75c3e38a5c4079" -> "sha256:51ce8c9446fa90da7eb14476c0b157fed31179b59551adf2b0373cba67011ce1" [label=""];
}

