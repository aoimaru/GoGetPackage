[app/sources/359790835.Dockerfile]
digraph {
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" [label="docker-image://docker.io/library/fedora:25" shape="ellipse"];
  "sha256:8ae12bdc6bd9d4b6142c60ec48151e27651275a9cb57216598f3fc6d6320a637" [label="/bin/sh -c dnf upgrade -y -q &&     dnf clean all &&     dnf install -y -q java-headless which hostname tar wget &&     dnf clean all" shape="box"];
  "sha256:591b0b6a9b5e36685fe70bec85c175e9ea430f12f63171fd8eec96299f6871f1" [label="/bin/sh -c wget -q https://artifacts.elastic.co/downloads/logstash/logstash-${LS_VERSION}.tar.gz -O - | tar -xzf -;   mv logstash-${LS_VERSION} /logstash" shape="box"];
  "sha256:cae8d42b717890adf1ff068af38a7d6ed660c121f54adb27fbb8795cbbc9cda7" [label="/bin/sh -c JARS_SKIP=true /logstash/bin/logstash-plugin install --version 0.3.1 logstash-filter-kubernetes &&     JARS_SKIP=true /logstash/bin/logstash-plugin install --version 2.0.0 logstash-input-journald" shape="box"];
  "sha256:7c42d2a0e87e5bec708a29fb9ffdbfdd0da0936bceee189df575c0b244b030cf" [label="local://context" shape="ellipse"];
  "sha256:4a39b27f905441ae7f1e7397d08fd36207d2158c03933ebb35a69eafb9d28f07" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:3f0020350b261450c1d63cfad0b66b509f9d14a74fdc662c4d2f3aa0a76201ec" [label="copy{src=/conf.d, dest=/logstash/conf.d/}" shape="note"];
  "sha256:763e7bfada1037610b751b5ecff42c9b099b0608736dbb81284f06d3343cc974" [label="copy{src=/config/log4j2.properties, dest=/logstash/config/log4j2.properties}" shape="note"];
  "sha256:ef40291bb252a0caf628486961024fb2451d342dbca6713e9bff7540f0546311" [label="mkdir{path=/var/lib/logstash}" shape="note"];
  "sha256:fccfb30ea12c5e66c2a5acf8a66b3f829ff4e1025814e81068c26174ac78cdd9" [label="sha256:fccfb30ea12c5e66c2a5acf8a66b3f829ff4e1025814e81068c26174ac78cdd9" shape="plaintext"];
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" -> "sha256:8ae12bdc6bd9d4b6142c60ec48151e27651275a9cb57216598f3fc6d6320a637" [label=""];
  "sha256:8ae12bdc6bd9d4b6142c60ec48151e27651275a9cb57216598f3fc6d6320a637" -> "sha256:591b0b6a9b5e36685fe70bec85c175e9ea430f12f63171fd8eec96299f6871f1" [label=""];
  "sha256:591b0b6a9b5e36685fe70bec85c175e9ea430f12f63171fd8eec96299f6871f1" -> "sha256:cae8d42b717890adf1ff068af38a7d6ed660c121f54adb27fbb8795cbbc9cda7" [label=""];
  "sha256:cae8d42b717890adf1ff068af38a7d6ed660c121f54adb27fbb8795cbbc9cda7" -> "sha256:4a39b27f905441ae7f1e7397d08fd36207d2158c03933ebb35a69eafb9d28f07" [label=""];
  "sha256:7c42d2a0e87e5bec708a29fb9ffdbfdd0da0936bceee189df575c0b244b030cf" -> "sha256:4a39b27f905441ae7f1e7397d08fd36207d2158c03933ebb35a69eafb9d28f07" [label=""];
  "sha256:4a39b27f905441ae7f1e7397d08fd36207d2158c03933ebb35a69eafb9d28f07" -> "sha256:3f0020350b261450c1d63cfad0b66b509f9d14a74fdc662c4d2f3aa0a76201ec" [label=""];
  "sha256:7c42d2a0e87e5bec708a29fb9ffdbfdd0da0936bceee189df575c0b244b030cf" -> "sha256:3f0020350b261450c1d63cfad0b66b509f9d14a74fdc662c4d2f3aa0a76201ec" [label=""];
  "sha256:3f0020350b261450c1d63cfad0b66b509f9d14a74fdc662c4d2f3aa0a76201ec" -> "sha256:763e7bfada1037610b751b5ecff42c9b099b0608736dbb81284f06d3343cc974" [label=""];
  "sha256:7c42d2a0e87e5bec708a29fb9ffdbfdd0da0936bceee189df575c0b244b030cf" -> "sha256:763e7bfada1037610b751b5ecff42c9b099b0608736dbb81284f06d3343cc974" [label=""];
  "sha256:763e7bfada1037610b751b5ecff42c9b099b0608736dbb81284f06d3343cc974" -> "sha256:ef40291bb252a0caf628486961024fb2451d342dbca6713e9bff7540f0546311" [label=""];
  "sha256:ef40291bb252a0caf628486961024fb2451d342dbca6713e9bff7540f0546311" -> "sha256:fccfb30ea12c5e66c2a5acf8a66b3f829ff4e1025814e81068c26174ac78cdd9" [label=""];
}

