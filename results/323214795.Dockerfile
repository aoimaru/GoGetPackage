[app/sources/323214795.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:1b6b9bb894939429da2b9ca610087855862ddddb1bb98b3e43eff785ceb66c7f" [label="/bin/sh -c apt-get -y -q update &&     apt-get -y -q install software-properties-common &&     add-apt-repository ppa:openjdk-r/ppa &&     apt-get -y -q update &&     apt-get install -qqy         dos2unix         openjdk-8-jdk         libjna-java         git         gnuplot         wget \tvim # not required by jepsen itself, just for ease of use" shape="box"];
  "sha256:53e083a6d4d093c7f04e93a1e75cccff155ccbea56afdb9e8f63b3eb31bdb12c" [label="/bin/sh -c wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein &&     mv lein /usr/bin &&     chmod +x /usr/bin/lein &&     lein self-install" shape="box"];
  "sha256:0c2c94f0cb076404fcd4123d52094d742309df69c79b25be9956bcfcf74a17db" [label="local://context" shape="ellipse"];
  "sha256:ac2bd494a8758687115873697d7e6eb982268d090bd27d49a4ef813ddbf58cd9" [label="copy{src=/jepsen/jepsen, dest=/jepsen/jepsen/}" shape="note"];
  "sha256:87a484a328ceb59ac28d31d349dbcaff679ecdaa87095e7b2cbb27165dbe4de5" [label="/bin/sh -c if [ -f /jepsen/jepsen/project.clj ]; then cd /jepsen/jepsen && lein install; fi" shape="box"];
  "sha256:2c9636c5a8337e1cb26046b96e9753f74d2b391d28e7d02dc7e096dfbe32510d" [label="copy{src=/jepsen, dest=/jepsen/}" shape="note"];
  "sha256:12a5e1e50ff28f428a277eeff9370f8687495d771b12d65c8815886c99578645" [label="copy{src=/bashrc, dest=/root/.bashrc}" shape="note"];
  "sha256:47581e70f800c8650c9fa8aa75b739bef201be0a8df7b042391b51d3646f4815" [label="copy{src=/init.sh, dest=/init.sh}" shape="note"];
  "sha256:1836788d2a5203ac2c57e2be77ec7394fc637af875be2c9441658bcee2e8e880" [label="/bin/sh -c dos2unix /init.sh /root/.bashrc     && chmod +x /init.sh" shape="box"];
  "sha256:0e804941b31b16eb146b5410b5b3fbc28fa1c3875c18acb07f2a56d26fb02d24" [label="sha256:0e804941b31b16eb146b5410b5b3fbc28fa1c3875c18acb07f2a56d26fb02d24" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:1b6b9bb894939429da2b9ca610087855862ddddb1bb98b3e43eff785ceb66c7f" [label=""];
  "sha256:1b6b9bb894939429da2b9ca610087855862ddddb1bb98b3e43eff785ceb66c7f" -> "sha256:53e083a6d4d093c7f04e93a1e75cccff155ccbea56afdb9e8f63b3eb31bdb12c" [label=""];
  "sha256:53e083a6d4d093c7f04e93a1e75cccff155ccbea56afdb9e8f63b3eb31bdb12c" -> "sha256:ac2bd494a8758687115873697d7e6eb982268d090bd27d49a4ef813ddbf58cd9" [label=""];
  "sha256:0c2c94f0cb076404fcd4123d52094d742309df69c79b25be9956bcfcf74a17db" -> "sha256:ac2bd494a8758687115873697d7e6eb982268d090bd27d49a4ef813ddbf58cd9" [label=""];
  "sha256:ac2bd494a8758687115873697d7e6eb982268d090bd27d49a4ef813ddbf58cd9" -> "sha256:87a484a328ceb59ac28d31d349dbcaff679ecdaa87095e7b2cbb27165dbe4de5" [label=""];
  "sha256:87a484a328ceb59ac28d31d349dbcaff679ecdaa87095e7b2cbb27165dbe4de5" -> "sha256:2c9636c5a8337e1cb26046b96e9753f74d2b391d28e7d02dc7e096dfbe32510d" [label=""];
  "sha256:0c2c94f0cb076404fcd4123d52094d742309df69c79b25be9956bcfcf74a17db" -> "sha256:2c9636c5a8337e1cb26046b96e9753f74d2b391d28e7d02dc7e096dfbe32510d" [label=""];
  "sha256:2c9636c5a8337e1cb26046b96e9753f74d2b391d28e7d02dc7e096dfbe32510d" -> "sha256:12a5e1e50ff28f428a277eeff9370f8687495d771b12d65c8815886c99578645" [label=""];
  "sha256:0c2c94f0cb076404fcd4123d52094d742309df69c79b25be9956bcfcf74a17db" -> "sha256:12a5e1e50ff28f428a277eeff9370f8687495d771b12d65c8815886c99578645" [label=""];
  "sha256:12a5e1e50ff28f428a277eeff9370f8687495d771b12d65c8815886c99578645" -> "sha256:47581e70f800c8650c9fa8aa75b739bef201be0a8df7b042391b51d3646f4815" [label=""];
  "sha256:0c2c94f0cb076404fcd4123d52094d742309df69c79b25be9956bcfcf74a17db" -> "sha256:47581e70f800c8650c9fa8aa75b739bef201be0a8df7b042391b51d3646f4815" [label=""];
  "sha256:47581e70f800c8650c9fa8aa75b739bef201be0a8df7b042391b51d3646f4815" -> "sha256:1836788d2a5203ac2c57e2be77ec7394fc637af875be2c9441658bcee2e8e880" [label=""];
  "sha256:1836788d2a5203ac2c57e2be77ec7394fc637af875be2c9441658bcee2e8e880" -> "sha256:0e804941b31b16eb146b5410b5b3fbc28fa1c3875c18acb07f2a56d26fb02d24" [label=""];
}

